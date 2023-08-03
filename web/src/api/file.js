import request from '@/utils/request'
export function fileList(path, sshInfo) {
    return request.get(`/websshclient/file/list?path=${path}&sshInfo=${sshInfo}`)
}
