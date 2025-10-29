# Scripts

常用的脚本工具集合。

## 使用方法

### AWS 相关

#### 安装 Docker

```bash
curl https://raw.githubusercontent.com/x0finch/scripts/refs/heads/main/aws/install-docker.sh | bash
```

#### 安装 Docker Compose

```bash
curl https://raw.githubusercontent.com/x0finch/scripts/refs/heads/main/aws/install-docker-compose.sh | bash
```

### Shadowsocks 相关

#### 创建 Docker Compose 配置文件

```bash
curl https://raw.githubusercontent.com/x0finch/scripts/refs/heads/main/ss/create-docker-compose.sh | bash
```

注意：运行后会在当前目录生成 `docker-compose.yml` 文件，记得修改密码等配置信息。
