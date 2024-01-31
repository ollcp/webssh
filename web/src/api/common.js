import request from '@/utils/request'
export function checkSSH(sshInfo) {
    return request.get(`/wwssadad/check?sshInfo=${sshInfo}`)
}
