import request from '@/utils/request'
export function checkSSH(sshInfo) {
    return request.get(`/websshclient/check?sshInfo=${sshInfo}`)
}
