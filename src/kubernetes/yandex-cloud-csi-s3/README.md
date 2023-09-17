```bash 
helm install csi-s3 yandex-s3/csi-s3 \
--namespace csi-s3 \
--create-namespace \
--set secret.name=ntnx-system.ntnx-s3-secret \
--set storageClass.create=true \
--set storageClass.name=ntnx-object-sc \
--set secret.endpoint='https://10.55.22.103' \
--set storageClass.singleBucket=logging-apps
```