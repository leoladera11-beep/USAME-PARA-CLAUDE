// Closing the Job Object also ends FFmpeg/QuickJS children, including on cancellation.
#[cfg(windows)]
pub struct Job(windows_sys::Win32::Foundation::HANDLE);
#[cfg(windows)]
unsafe impl Send for Job {}
#[cfg(windows)]
impl Job {
    pub fn assign(pid: u32) -> Result<Self, String> {
        use windows_sys::Win32::System::{JobObjects::*, Threading::*};
        use windows_sys::Win32::Foundation::CloseHandle;
        unsafe {
            let job = CreateJobObjectW(std::ptr::null(), std::ptr::null());
            if job.is_null() { return Err("No se pudo preparar el grupo de descarga.".into()); }
            let mut limits: JOBOBJECT_EXTENDED_LIMIT_INFORMATION = std::mem::zeroed();
            limits.BasicLimitInformation.LimitFlags = JOB_OBJECT_LIMIT_KILL_ON_JOB_CLOSE;
            if SetInformationJobObject(job, JobObjectExtendedLimitInformation, &limits as *const _ as *const _, std::mem::size_of_val(&limits) as u32) == 0 {
                CloseHandle(job); return Err("No se pudo limitar el grupo de descarga.".into());
            }
            let process = OpenProcess(PROCESS_SET_QUOTA | PROCESS_TERMINATE, 0, pid);
            if process.is_null() || AssignProcessToJobObject(job, process) == 0 {
                if !process.is_null() { CloseHandle(process); }
                CloseHandle(job); return Err("No se pudo asociar el motor a la descarga.".into());
            }
            CloseHandle(process); Ok(Job(job))
        }
    }
    pub fn terminate(&self) { unsafe { windows_sys::Win32::System::JobObjects::TerminateJobObject(self.0, 1); } }
}
#[cfg(windows)]
impl Drop for Job { fn drop(&mut self) { unsafe { windows_sys::Win32::Foundation::CloseHandle(self.0); } } }
#[cfg(not(windows))]
pub struct Job;
#[cfg(not(windows))]
impl Job { pub fn assign(_: u32) -> Result<Self, String> { Ok(Self) } pub fn terminate(&self) {} }
