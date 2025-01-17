��    �      �  �   �	        �   	  �   �  z   �  >      W    [  �  w  �      =   �  ;     <   O  S   �  <   �  �    �  �  c  �  �  	  �   �  �  �      �"  <   �"  =   �"  g  /#  .   �%  g   �%  R   .&  "   �&  4   �&    �&     �+     ,    &,  �   ,-  �   �-  X   �.  o   �.    T/  v   V0  t   �0  �  B1  �  3  ;   �6  [   ;7  J   �7  a   �7  �   D8  �   9  �   �9  8   w:  %   �:  W   �:     .;  u   L;  4   �;  -   �;  3   %<  2   Y<  8   �<     �<     �<  9   �<     9=  @   M=  *   �=  7   �=  '   �=  .   >  =   H>  *   �>  0   �>  ,   �>     ?  ]   /?  0   �?  0   �?  "   �?     @  ,   0@  +   ]@  $   �@     �@  *   �@  A   �@     0A     NA     kA  )   �A  6   �A     �A     B      B  (   @B     iB  `   �B  �   �B  �   }C     D     .D  $   ID     nD     �D  a   �D  s   E  B   zE  +   �E  +   �E  6   F  q   LF  /   �F  1   �F  '    G  '   HG     pG  &   �G  %   �G  (   �G  #   �G      #H  _   DH     �H  "   �H  "   �H     	I  -   )I  -   WI  9   �I     �I     �I  c   �I  #   \J  �   �J  H   K  &   LK  e   sK  �   �K  E   �L  a   M  �   gM  �   3N     O      O  /   8O     hO  =   �O  $   �O     �O  &   
P  +   1P  G   ]P     �P  r   �P     -Q  /   AQ  �  qQ  �   �R  �   �S  �   �T  F  U  �  RV  #  9X  �  ]Z  �    \  @   �\  >   �\  8   ,]  <   e]  6   �]  �  �]  �  �_  e  fa  �  �b  �   �e  �  �f     -h  =   Jh  A   �h  g  �h  *   2k  g   ]k  R   �k     l  /   7l  �  gl     �p  !   q    0q  �   6r  �   �r  _   �s  o   �s    \t  v   ^u  {   �u  �  Qv  	  x  B   |  [   a|  J   �|  a   }  �   j}  �   (~  �   �~  =   �     �  W   �  &   R�  u   y�  +   �  $   �  ,   @�  X   m�  >   Ɓ  "   �     (�  B   G�     ��  E   ��  %   �  2   �  "   A�  0   d�  B   ��  .   ؃  +   �  0   3�     d�  ]   ��  *   �  ,   �     :�     Y�  -   x�  ,   ��  $   Ӆ     ��  *   �  E   6�     |�     ��     ��  )   ʆ  6   �  !   +�     M�  )   g�  (   ��     ��  `   ч  �   2�  �   Έ     f�     ��  (   ��     ɉ     �  a   ��  s   _�  B   ӊ  +   �  +   B�  6   n�  q   ��  (   �  !   @�      b�  .   ��     ��  $   ь  '   ��  ,   �  #   K�  '   o�  _   ��     ��  0   �  3   E�  0   y�  -   ��  -   ؎  =   �     D�     ]�  p   w�     �  o   �  9   x�     ��  Z   Ґ  �   -�  N   �  R   ^�  �   ��  �   }�     (�     C�  3   ^�  #   ��  =   ��     ��  "   �  +   3�  +   _�  J   ��     ֕  f   �     S�  (   g�         :           6   ~           W   .   �       `       _              (       �   t   Y          P      s          �      U                      B          �       �   {      S          J   �       w   G                  *   u   f       �   j                 E   -   %   z   d   �                #   g   "   q       <   n   @      �                  �       c              �   4   
       '   5   &   �   b   o   y      �   �       	   x   D   >   v   $   �               ?   A   ]   X   V       K       ^                 �   �   �      Q   ,       )   7   R       H      8       I   [       0   }   �   m   i              O   2   T   /   N   h   +       e   L   !   ;   a       =   k       9      �       3   �       M   l   |   F   Z   1   �   p   C   �      \          �           �         �   �   r        
		  # Create a ClusterRoleBinding for user1, user2, and group1 using the cluster-admin ClusterRole
		  kubectl create clusterrolebinding cluster-admin --clusterrole=cluster-admin --user=user1 --user=user2 --group=group1 
		  # Create a RoleBinding for user1, user2, and group1 using the admin ClusterRole
		  kubectl create rolebinding admin --clusterrole=admin --user=user1 --user=user2 --group=group1 
		  # Show metrics for all nodes
		  kubectl top node

		  # Show metrics for a given node
		  kubectl top node NODE_NAME 
		# Create a new resourcequota named my-quota
		kubectl create quota my-quota --hard=cpu=1,memory=1G,pods=2,services=3,replicationcontrollers=2,resourcequotas=1,secrets=5,persistentvolumeclaims=10

		# Create a new resourcequota named best-effort
		kubectl create quota best-effort --hard=pods=100 --scopes=BestEffort 
		# Create a pod disruption budget named my-pdb that will select all pods with the app=rails label
		# and require at least one of them being available at any point in time.
		kubectl create poddisruptionbudget my-pdb --selector=app=rails --min-available=1

		# Create a pod disruption budget named my-pdb that will select all pods with the app=nginx label
		# and require at least half of the pods selected to be available at any point in time.
		kubectl create pdb my-pdb --selector=app=nginx --min-available=50% 
		# Describe a node
		kubectl describe nodes kubernetes-node-emt8.c.myproject.internal

		# Describe a pod
		kubectl describe pods/nginx

		# Describe a pod identified by type and name in "pod.json"
		kubectl describe -f pod.json

		# Describe all pods
		kubectl describe pods

		# Describe pods by label name=myLabel
		kubectl describe po -l name=myLabel

		# Describe all pods managed by the 'frontend' replication controller (rc-created pods
		# get the name of the rc as a prefix in the pod the name).
		kubectl describe pods frontend 
		# Edit the service named 'docker-registry':
		kubectl edit svc/docker-registry

		# Use an alternative editor
		KUBE_EDITOR="nano" kubectl edit svc/docker-registry

		# Edit the job 'myjob' in JSON using the v1 API format:
		kubectl edit job.v1.batch/myjob -o json

		# Edit the deployment 'mydeployment' in YAML and save the modified config in its annotation:
		kubectl edit deployment/mydeployment -o yaml --save-config 
		# Get the documentation of the resource and its fields
		kubectl explain pods

		# Get the documentation of a specific field of a resource
		kubectl explain pods.spec.containers 
		# Mark node "foo" as schedulable.
		$ kubectl uncordon foo 
		# Mark node "foo" as unschedulable.
		kubectl cordon foo 
		# Print flags inherited by all commands
		kubectl options 
		# Print the client and server versions for the current context
		kubectl version 
		# Print the supported API versions
		kubectl api-versions 
		# Replace a pod using the data in pod.json.
		kubectl replace -f ./pod.json

		# Replace a pod based on the JSON passed into stdin.
		cat pod.json | kubectl replace -f -

		# Update a single-container pod's image version (tag) to v4
		kubectl get pod mypod -o yaml | sed 's/\(image: myimage\):.*$/:v4/' | kubectl replace -f -

		# Force replace, delete and then re-create the resource
		kubectl replace --force -f ./pod.json 
		# Set the last-applied-configuration of a resource to match the contents of a file.
		kubectl apply set-last-applied -f deploy.yaml

		# Execute set-last-applied against each configuration file in a directory.
		kubectl apply set-last-applied -f path/

		# Set the last-applied-configuration of a resource to match the contents of a file, will create the annotation if it does not already exist.
		kubectl apply set-last-applied -f deploy.yaml --create-annotation=true
		 
		# Show metrics for all pods in the default namespace
		kubectl top pod

		# Show metrics for all pods in the given namespace
		kubectl top pod --namespace=NAMESPACE

		# Show metrics for a given pod and its containers
		kubectl top pod POD_NAME --containers

		# Show metrics for the pods defined by label name=myLabel
		kubectl top pod -l name=myLabel 
		# Update pod 'foo' with the label 'unhealthy' and the value 'true'.
		kubectl label pods foo unhealthy=true

		# Update pod 'foo' with the label 'status' and the value 'unhealthy', overwriting any existing value.
		kubectl label --overwrite pods foo status=unhealthy

		# Update all pods in the namespace
		kubectl label pods --all status=unhealthy

		# Update a pod identified by the type and name in "pod.json"
		kubectl label -f pod.json status=unhealthy

		# Update pod 'foo' only if the resource is unchanged from version 1.
		kubectl label pods foo status=unhealthy --resource-version=1

		# Update pod 'foo' by removing a label named 'bar' if it exists.
		# Does not require the --overwrite flag.
		kubectl label pods foo bar- 
		# View the last-applied-configuration annotations by type/name in YAML.
		kubectl apply view-last-applied deployment/nginx

		# View the last-applied-configuration annotations by file in JSON
		kubectl apply view-last-applied -f deploy.yaml -o json 
		Convert config files between different API versions. Both YAML
		and JSON formats are accepted.

		The command takes filename, directory, or URL as input, and convert it into format
		of version specified by --output-version flag. If target version is not specified or
		not supported, convert to latest version.

		The default output will be printed to stdout in YAML format. One can use -o option
		to change to output destination. 
		Create a ClusterRole. 
		Create a ClusterRoleBinding for a particular ClusterRole. 
		Create a RoleBinding for a particular Role or ClusterRole. 
		Create a configmap based on a file, directory, or specified literal value.

		A single configmap may package one or more key/value pairs.

		When creating a configmap based on a file, the key will default to the basename of the file, and the value will
		default to the file content.  If the basename is an invalid key, you may specify an alternate key.

		When creating a configmap based on a directory, each file whose basename is a valid key in the directory will be
		packaged into the configmap.  Any directory entries except regular files are ignored (e.g. subdirectories,
		symlinks, devices, pipes, etc). 
		Create a namespace with the specified name. 
		Create a pod disruption budget with the specified name, selector, and desired minimum available pods 
		Create a resourcequota with the specified name, hard limits and optional scopes 
		Create a role with single rule. 
		Create a service account with the specified name. 
		Edit a resource from the default editor.

		The edit command allows you to directly edit any API resource you can retrieve via the
		command line tools. It will open the editor defined by your KUBE_EDITOR, or EDITOR
		environment variables, or fall back to 'vi' for Linux or 'notepad' for Windows.
		You can edit multiple objects, although changes are applied one at a time. The command
		accepts filenames as well as command line arguments, although the files you point to must
		be previously saved versions of resources.

		Editing is done with the API version used to fetch the resource.
		To edit using a specific API version, fully-qualify the resource, version, and group.

		The default format is YAML. To edit in JSON, specify "-o json".

		The flag --windows-line-endings can be used to force Windows line endings,
		otherwise the default for your operating system will be used.

		In the event an error occurs while updating, a temporary file will be created on disk
		that contains your unapplied changes. The most common error when updating a resource
		is another editor changing the resource on the server. When this occurs, you will have
		to apply your changes to the newer version of the resource, or update your temporary
		saved copy to include the latest resource version. 
		Mark node as schedulable. 
		Mark node as unschedulable. 
		Set the latest last-applied-configuration annotations by setting it to match the contents of a file.
		This results in the last-applied-configuration being updated as though 'kubectl apply -f <file>' was run,
		without updating any other parts of the object. 
		View the latest last-applied-configuration annotations by type/name or file.

		The default output will be printed to stdout in YAML format. One can use -o option
		to change output format. 
	  # Create a new TLS secret named tls-secret with the given key pair:
	  kubectl create secret tls tls-secret --cert=path/to/tls.cert --key=path/to/tls.key 
	  # Create a new namespace named my-namespace
	  kubectl create namespace my-namespace 
	  # Create a new service account named my-service-account
	  kubectl create serviceaccount my-service-account 
	Create an ExternalName service with the specified name.

	ExternalName service references to an external DNS address instead of
	only pods, which will allow application authors to reference services
	that exist off platform, on other clusters, or locally. 
	Help provides help for any command in the application.
	Simply type kubectl help [path to command] for full details. 
    # Create a new LoadBalancer service named my-lbs
    kubectl create service loadbalancer my-lbs --tcp=5678:8080 
    # Dump current cluster state to stdout
    kubectl cluster-info dump

    # Dump current cluster state to /path/to/cluster-state
    kubectl cluster-info dump --output-directory=/path/to/cluster-state

    # Dump all namespaces to stdout
    kubectl cluster-info dump --all-namespaces

    # Dump a set of namespaces to /path/to/cluster-state
    kubectl cluster-info dump --namespaces default,kube-system --output-directory=/path/to/cluster-state 
    # Update pod 'foo' with the annotation 'description' and the value 'my frontend'.
    # If the same annotation is set multiple times, only the last value will be applied
    kubectl annotate pods foo description='my frontend'

    # Update a pod identified by type and name in "pod.json"
    kubectl annotate -f pod.json description='my frontend'

    # Update pod 'foo' with the annotation 'description' and the value 'my frontend running nginx', overwriting any existing value.
    kubectl annotate --overwrite pods foo description='my frontend running nginx'

    # Update all pods in the namespace
    kubectl annotate pods --all description='my frontend running nginx'

    # Update pod 'foo' only if the resource is unchanged from version 1.
    kubectl annotate pods foo description='my frontend running nginx' --resource-version=1

    # Update pod 'foo' by removing an annotation named 'description' if it exists.
    # Does not require the --overwrite flag.
    kubectl annotate pods foo description- 
    Create a LoadBalancer service with the specified name. A comma-delimited set of quota scopes that must all match each object tracked by the quota. A comma-delimited set of resource=quantity pairs that define a hard limit. A label selector to use for this budget. Only equality-based selector requirements are supported. A label selector to use for this service. Only equality-based selector requirements are supported. If empty (the default) infer the selector from the replication controller or replica set.) Additional external IP address (not managed by Kubernetes) to accept for the service. If this IP is routed to a node, the service can be accessed by this IP in addition to its generated service IP. An inline JSON override for the generated object. If this is non-empty, it is used to override the generated object. Requires that the object supply a valid apiVersion field. Apply a configuration to a resource by filename or stdin Approve a certificate signing request Assign your own ClusterIP or set to 'None' for a 'headless' service (no loadbalancing). Attach to a running container ClusterIP to be assigned to the service. Leave empty to auto-allocate, or set to 'None' to create a headless service. ClusterRole this ClusterRoleBinding should reference ClusterRole this RoleBinding should reference Convert config files between different API versions Copy files and directories to and from containers. Create a ClusterRoleBinding for a particular ClusterRole Create a LoadBalancer service. Create a NodePort service. Create a RoleBinding for a particular Role or ClusterRole Create a TLS secret Create a configmap from a local file, directory or literal value Create a namespace with the specified name Create a pod disruption budget with the specified name. Create a quota with the specified name. Create a secret for use with a Docker registry Create a secret from a local file, directory or literal value Create a secret using specified subcommand Create a service account with the specified name Create a service using specified subcommand. Create an ExternalName service. Delete resources by filenames, stdin, resources and names, or by resources and label selector Delete the specified cluster from the kubeconfig Delete the specified context from the kubeconfig Deny a certificate signing request Describe one or many contexts Display Resource (CPU/Memory) usage of nodes Display Resource (CPU/Memory) usage of pods Display Resource (CPU/Memory) usage. Display cluster info Display clusters defined in the kubeconfig Display merged kubeconfig settings or a specified kubeconfig file Display one or many resources Displays the current-context Documentation of resources Drain node in preparation for maintenance Dump lots of relevant info for debugging and diagnosis Edit a resource on the server Email for Docker registry Execute a command in a container Forward one or more local ports to a pod Help about any command If non-empty, set the session affinity for the service to this; legal values: 'None', 'ClientIP' If non-empty, the annotation update will only succeed if this is the current resource-version for the object. Only valid when specifying a single resource. If non-empty, the labels update will only succeed if this is the current resource-version for the object. Only valid when specifying a single resource. Mark node as schedulable Mark node as unschedulable Mark the provided resource as paused Modify certificate resources. Modify kubeconfig files Name or number for the port on the container that the service should direct traffic to. Optional. Only return logs after a specific date (RFC3339). Defaults to all logs. Only one of since-time / since may be used. Output shell completion code for the specified shell (bash or zsh) Password for Docker registry authentication Path to PEM encoded public key certificate. Path to private key associated with given certificate. Precondition for resource version. Requires that the current resource version match this value in order to scale. Print the client and server version information Print the list of flags inherited by all commands Print the logs for a container in a pod Replace a resource by filename or stdin Resume a paused resource Role this RoleBinding should reference Run a particular image on the cluster Run a proxy to the Kubernetes API server Server location for Docker registry Set specific features on objects Set the last-applied-configuration annotation on a live object to match the contents of a file. Set the selector on a resource Sets a cluster entry in kubeconfig Sets a context entry in kubeconfig Sets a user entry in kubeconfig Sets an individual value in a kubeconfig file Sets the current-context in a kubeconfig file Show details of a specific resource or group of resources Show the status of the rollout Synonym for --target-port Take a replication controller, service, deployment or pod and expose it as a new Kubernetes Service The image for the container to run. The image pull policy for the container. If left empty, this value will not be specified by the client and defaulted by the server The minimum number or percentage of available pods this budget requires. The name for the newly created object. The name for the newly created object. If not specified, the name of the input resource will be used. The name of the API generator to use. There are 2 generators: 'service/v1' and 'service/v2'. The only difference between them is that service port in v1 is named 'default', while it is left unnamed in v2. Default is 'service/v2'. The network protocol for the service to be created. Default is 'TCP'. The port that the service should serve on. Copied from the resource being exposed, if unspecified The resource requirement limits for this container.  For example, 'cpu=200m,memory=512Mi'.  Note that server side components may assign limits depending on the server configuration, such as limit ranges. The resource requirement requests for this container.  For example, 'cpu=100m,memory=256Mi'.  Note that server side components may assign requests depending on the server configuration, such as limit ranges. The type of secret to create Undo a previous rollout Unsets an individual value in a kubeconfig file Update image of a pod template Update resource requests/limits on objects with pod templates Update the annotations on a resource Update the labels on a resource Update the taints on one or more nodes Username for Docker registry authentication View latest last-applied-configuration annotations of a resource/object View rollout history Where to output the files.  If empty or '-' uses stdout, otherwise creates a directory hierarchy in that directory dummy restart flag) kubectl controls the Kubernetes cluster manager Project-Id-Version: gettext-go-examples-hello
Report-Msgid-Bugs-To: EMAIL
PO-Revision-Date: 2017-11-11 19:01+0800
Last-Translator: zhengjiajin <zhengjiajin@caicloud.io>
Language-Team: 
Language: zh
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Poedit 2.0.4
X-Poedit-SourceCharset: UTF-8
Plural-Forms: nplurals=2; plural=(n > 1);
 
		  # 使用 cluster-admin ClusterRole 为 user1, user2, and group1 创建一个 ClusterRoleBinding
		  kubectl create clusterrolebinding cluster-admin --clusterrole=cluster-admin --user=user1 --user=user2 --group=group1 
		  # 使用 admin ClusterRole 为 user1, user2, and group1 创建一个 RoleBinding
		  kubectl create rolebinding admin --clusterrole=admin --user=user1 --user=user2 --group=group1 
		  # 显示所有 nodes 上的指标
		  kubectl top node

		  # 显示指定 node 上的指标
		  kubectl top node NODE_NAME 
		# 创建一个名为 my-quota 的 resourcequota
		kubectl create quota my-quota --hard=cpu=1,memory=1G,pods=2,services=3,replicationcontrollers=2,resourcequotas=1,secrets=5,persistentvolumeclaims=10

		# 创建一个名为 best-effort 的 resourcequota
		kubectl create quota best-effort --hard=pods=100 --scopes=BestEffort 
		# 创建一个名称为 my-pdb 的 pod disruption budget 并将会选择所有 app=rails 标签的 pods
		# 并要求他们在同一时间中最少有一个可用. 
		kubectl create poddisruptionbudget my-pdb --selector=app=rails --min-available=1

		# 创建一个名称为 my-pdb 的 pod disruption budget 并将会选择所有 app=rails 标签的 pods
		# 并要求他们在同一时间中最少有一半可用.
		kubectl create pdb my-pdb --selector=app=nginx --min-available=50% 
		# 描述一个 node
		kubectl describe nodes kubernetes-node-emt8.c.myproject.internal

		# 描述一个 pod
		kubectl describe pods/nginx

		# 描述一个被 "pod.json" 中的类型和名称标识的 pod
		kubectl describe -f pod.json

		# 描述所有 pods
		kubectl describe pods

		# 描述标签为 name=myLabel 的 pods
		kubectl describe po -l name=myLabel

		# 描述所有被名称为 'frontend' 的 replication controller 管理的 pods(rc-创建 pods
		# 并使用 rc 的名称作为 pod 的前缀).
		kubectl describe pods frontend 
		# 编辑名为 'docker-registry' 的 service:
		kubectl edit svc/docker-registry

		# 使用一个可选择的编辑器
		KUBE_EDITOR="nano" kubectl edit svc/docker-registry

		# 使用 v1 API 格式的 JSON 编辑名为 'myjob' 的 job:
		kubectl edit job.v1.batch/myjob -o json

		# 在 YAML 中编辑名为 'mydeployment' 的 deployment 并在它的注解中保存修改后的配置:
		kubectl edit deployment/mydeployment -o yaml --save-config 
		# 获取资源及其字段的文档
		kubectl explain pods

		# 获取资源指定字段的文档
		kubectl explain pods.spec.containers 
		# 标记 node "foo" 为 schedulable.
		$ kubectl uncordon foo 
		# 标记 node "foo" 为 unschedulable.
		kubectl cordon foo 
		# 输出所有命令继承的 flags
		kubectl options 
		# 输出当前 client 和 server 版本
		kubectl version 
		# 输出支持的 API 版本
		kubectl api-versions 
		# 使用在 pod.json 中的数据替换一个 pod.
		kubectl replace -f ./pod.json

		# 基于被重定向到 stdin 中的 JSON 替换一个 pod.
		cat pod.json | kubectl replace -f -

		# 更新一个单独容器的 pod 的 image 版本 (tag) 到 v4
		kubectl get pod mypod -o yaml | sed 's/\(image: myimage\):.*$/:v4/' | kubectl replace -f -

		# 强制替换, 删除然后重新创建这个 resource
		kubectl replace --force -f ./pod.json 
		# 设置一个资源的 last-applied-configuration 去匹配一个文件的内容.
		kubectl apply set-last-applied -f deploy.yaml

		# Execute set-last-applied against each configuration file in a directory.
		kubectl apply set-last-applied -f path/

		# 设置一个资源的 last-applied-configuration 去匹配一个文件的内容, 如果不存在将会创建一个 annotation.
		kubectl apply set-last-applied -f deploy.yaml --create-annotation=true
		 
		# 显示 default namespace 下所有 pods 下的 metrics
		kubectl top pod

		# 显示指定 namespace 下所有 pods 的 metrics
		kubectl top pod --namespace=NAMESPACE

		# 显示指定 pod 和它的容器的 metrics
		kubectl top pod POD_NAME --containers

		# 显示指定 label 为 name=myLabel 的 pods 的 metrics
		kubectl top pod -l name=myLabel 
		# Update pod 'foo' with the label 'unhealthy' and the value 'true'.
		kubectl label pods foo unhealthy=true

		# Update pod 'foo' with the label 'status' and the value 'unhealthy', overwriting any existing value.
		kubectl label --overwrite pods foo status=unhealthy

		# Update all pods in the namespace
		kubectl label pods --all status=unhealthy

		# Update a pod identified by the type and name in "pod.json"
		kubectl label -f pod.json status=unhealthy

		# Update pod 'foo' only if the resource is unchanged from version 1.
		kubectl label pods foo status=unhealthy --resource-version=1

		# Update pod 'foo' by removing a label named 'bar' if it exists.
		# Does not require the --overwrite flag.
		kubectl label pods foo bar- 
		# View the last-applied-configuration annotations by type/name in YAML.
		kubectl apply view-last-applied deployment/nginx

		# View the last-applied-configuration annotations by file in JSON
		kubectl apply view-last-applied -f deploy.yaml -o json 
		在不同的 API versions 转换配置文件. 接受 YAML
		和 JSON 格式.

		这个命令以 filename, directory, 或者 URL 作为输入, 并通过 —output-version flag
		 转换到指定版本的格式. 如果目标版本没有被指定或者
		不支持, 转换到最后的版本.

		默认以 YAML 格式输出到 stdout. 可以使用 -o option
		修改目标输出的格式. 
		创建一个 ClusterRole. 
		 为指定的 ClusterRole 创建一个 ClusterRoleBinding. 
		为指定的 Role 或者 ClusterRole 创建一个 RoleBinding. 
		Create a configmap based on a file, directory, or specified literal value.

		A single configmap may package one or more key/value pairs.

		When creating a configmap based on a file, the key will default to the basename of the file, and the value will
		default to the file content.  If the basename is an invalid key, you may specify an alternate key.

		When creating a configmap based on a directory, each file whose basename is a valid key in the directory will be
		packaged into the configmap.  Any directory entries except regular files are ignored (e.g. subdirectories,
		symlinks, devices, pipes, etc). 
		创建一个 namespace 并指定名称. 
		Create a pod disruption budget with the specified name, selector, and desired minimum available pods 
		Create a resourcequota with the specified name, hard limits and optional scopes 
		创建单一 rule 的 role. 
		创建一个指定名称的 service account. 
		使用默认的编辑器修改资源.

		edit 命令允许你通过命令行直接修改 API 资源.
		它会打开你在 KUBE_EDITOR 或者EDITOR 环境变量中定义的编辑器
		或者回滚到 Linux vi 编辑器或者 Windows notepad.
		你可以修改多个对象, 虽然每次只能修改一次. 这个命令
		同时也接受文件名作为命令行参数, 尽管这些文件你指出必须是
		你之前保存的资源版本.

		Editing 是通过用于获取资源的API版本完成的.
		为了能通过指定的 API 版本修改, 请完全限定 resource, version 和 group.

		默认是 YAML 格式. 想在 JSON 中修改, 指定 "-o json".

		--windows-line-endings 命令行参数可以用来强制使用 Windows line endings,
		否则会使用你操作系统的默认值.

		如果更新时发生错误，将在磁盘上创建一个临时文件
		里面包含您未应用的更改. 更新资源时最常见的错误
		是另一个编辑器也在服务器中修改这个资源. 当发生这种情况时, 你将
		需要应用你的修改到资源的最新版本, 或者更新你被保存的临时文件
		复制它并使用最新的版本. 
		标记 node 为 schedulable. 
		标记 node 为 unschedulable. 
		Set the latest last-applied-configuration annotations by setting it to match the contents of a file.
		This results in the last-applied-configuration being updated as though 'kubectl apply -f <file>' was run,
		without updating any other parts of the object. 
		View the latest last-applied-configuration annotations by type/name or file.

		The default output will be printed to stdout in YAML format. One can use -o option
		to change output format. 
	  # 使用提供的 key pair 名称为tls-secret 的 secret:
	  kubectl create secret tls tls-secret --cert=path/to/tls.cert --key=path/to/tls.key 
	  # 创建一个名称为 my-namespace 的 namespace
	  kubectl create namespace my-namespace 
	  # Create a new service account named my-service-account
	  kubectl create serviceaccount my-service-account 
	Create an ExternalName service with the specified name.

	ExternalName service references to an external DNS address instead of
	only pods, which will allow application authors to reference services
	that exist off platform, on other clusters, or locally. 
	Help provides help for any command in the application.
	Simply type kubectl help [path to command] for full details. 
    # 创建一个名称为 my-lbs 的 LoadBalancer service
    kubectl create service loadbalancer my-lbs --tcp=5678:8080 
    # 导出当前的集群状态信息到 stdout
    kubectl cluster-info dump

    # 导出当前的集群状态 /path/to/cluster-state
    kubectl cluster-info dump --output-directory=/path/to/cluster-state

    # 导出所有分区到 stdout
    kubectl cluster-info dump --all-namespaces

    # 导出一组分区到 /path/to/cluster-state
    kubectl cluster-info dump --namespaces default,kube-system --output-directory=/path/to/cluster-state 
    # Update pod 'foo' with the annotation 'description' and the value 'my frontend'.
    # If the same annotation is set multiple times, only the last value will be applied
    kubectl annotate pods foo description='my frontend'

    # Update a pod identified by type and name in "pod.json"
    kubectl annotate -f pod.json description='my frontend'

    # Update pod 'foo' with the annotation 'description' and the value 'my frontend running nginx', overwriting any existing value.
    kubectl annotate --overwrite pods foo description='my frontend running nginx'

    # Update all pods in the namespace
    kubectl annotate pods --all description='my frontend running nginx'

    # Update pod 'foo' only if the resource is unchanged from version 1.
    kubectl annotate pods foo description='my frontend running nginx' --resource-version=1

    # 更新名称为 'foo' 的 pod, 删除一个名称为 'description' 的 annotation 如果它存在. 
    # 不要求使用 --overwrite flag.
    kubectl annotate pods foo description- 
    使用一个指定的名称创建一个 LoadBalancer service. A comma-delimited set of quota scopes that must all match each object tracked by the quota. A comma-delimited set of resource=quantity pairs that define a hard limit. A label selector to use for this budget. Only equality-based selector requirements are supported. A label selector to use for this service. Only equality-based selector requirements are supported. If empty (the default) infer the selector from the replication controller or replica set.) Additional external IP address (not managed by Kubernetes) to accept for the service. If this IP is routed to a node, the service can be accessed by this IP in addition to its generated service IP. An inline JSON override for the generated object. If this is non-empty, it is used to override the generated object. Requires that the object supply a valid apiVersion field. 通过文件名或标准输入流(stdin)对资源进行配置 同意一个自签证书请求 Assign your own ClusterIP or set to 'None' for a 'headless' service (no loadbalancing). Attach 到一个运行中的 container ClusterIP to be assigned to the service. Leave empty to auto-allocate, or set to 'None' to create a headless service. ClusterRoleBinding 应该指定 ClusterRole RoleBinding 应该指定 ClusterRole 在不同的 API versions 转换配置文件 复制 files 和 directories 到 containers 和从容器中复制 files 和 directories. 为一个指定的 ClusterRole 创建一个 ClusterRoleBinding 创建一个 LoadBalancer service. 创建一个 NodePort service. 为一个指定的 Role 或者 ClusterRole创建一个 RoleBinding 创建一个 TLS secret 从本地 file, directory 或者 literal value 创建一个 configmap 创建一个指定名称的 namespace 创建一个指定名称的 pod disruption budget. 创建一个指定名称的 quota. 创建一个给 Docker registry 使用的 secret 从本地 file, directory 或者 literal value 创建一个 secret 使用指定的 subcommand 创建一个 secret 创建一个指定名称的 service account 使用指定的 subcommand 创建一个 service. Create an ExternalName service. Delete resources by filenames, stdin, resources and names, or by resources and label selector 删除 kubeconfig 文件中指定的集群 删除 kubeconfig 文件中指定的 context 拒绝一个自签证书请求 描述一个或多个 contexts 显示 nodes 的 Resource (CPU/Memory) 使用 显示 pods 的 Resource (CPU/Memory) 使用 显示 Resource (CPU/Memory) 使用. 显示集群信息 显示 kubeconfig 文件中定义的集群 显示合并的 kubeconfig 配置或一个指定的 kubeconfig 文件 显示一个或更多 resources 显示当前的 context 查看资源的文档 Drain node in preparation for maintenance Dump lots of relevant info for debugging and diagnosis 在服务器上编辑一个资源 Email for Docker registry 在一个 container 中执行一个命令 Forward one or more local ports to a pod Help about any command If non-empty, set the session affinity for the service to this; legal values: 'None', 'ClientIP' If non-empty, the annotation update will only succeed if this is the current resource-version for the object. Only valid when specifying a single resource. If non-empty, the labels update will only succeed if this is the current resource-version for the object. Only valid when specifying a single resource. 标记 node 为 schedulable 标记 node 为 unschedulable 标记提供的 resource 为中止状态 修改 certificate 资源. 修改 kubeconfig 文件 Name or number for the port on the container that the service should direct traffic to. Optional. Only return logs after a specific date (RFC3339). Defaults to all logs. Only one of since-time / since may be used. Output shell completion code for the specified shell (bash or zsh) Password for Docker registry authentication Path to PEM encoded public key certificate. Path to private key associated with given certificate. Precondition for resource version. Requires that the current resource version match this value in order to scale. 输出 client 和 server 的版本信息 输出所有命令的层级关系 输出容器在 pod 中的日志 通过 filename 或者 stdin替换一个资源 继续一个停止的 resource RoleBinding 的 Role 应该被引用 在集群中运行一个指定的镜像 运行一个 proxy 到 Kubernetes API server Server location for Docker registry 为 objects 设置一个指定的特征 Set the last-applied-configuration annotation on a live object to match the contents of a file. 设置 resource 的 selector 设置 kubeconfig 文件中的一个集群条目 设置 kubeconfig 文件中的一个 context 条目 设置 kubeconfig 文件中的一个用户条目 设置 kubeconfig 文件中的一个单个值 设置 kubeconfig 文件中的当前上下文 显示一个指定 resource 或者 group 的 resources 详情 显示 rollout 的状态 Synonym for --target-port 使用 replication controller, service, deployment 或者 pod 并暴露它作为一个 新的 Kubernetes Service 指定容器要运行的镜像. 容器的镜像拉取策略. 如果为空, 这个值将不会 被 client 指定且使用 server 端的默认值 最小数量百分比可用的 pods 作为 budget 要求. 名称为最新创建的对象. 名称为最新创建的对象. 如果没有指定, 输入资源的 名称即将被使用. 使用 generator 的名称. 这里有 2 个 generators: 'service/v1' 和 'service/v2'. 为一个不同地方是服务端口在 v1 的情况下叫 'default', 如果在 v2 中没有指定名称. 默认的名称是 'service/v2'. 创建 service 的时候伴随着一个网络协议被创建. 默认是 'TCP'. 服务的端口应该被指定. 如果没有指定, 从被创建的资源中复制 The resource requirement limits for this container.  For example, 'cpu=200m,memory=512Mi'.  Note that server side components may assign limits depending on the server configuration, such as limit ranges. 资源为 container 请求 requests . 例如, 'cpu=100m,memory=256Mi'. 注意服务端组件也许会赋予 requests, 这决定于服务器端配置, 比如 limit ranges. 创建 secret 类型资源 撤销上一次的 rollout 取消设置 kubeconfig 文件中的一个单个值 更新一个 pod template 的镜像 在对象的 pod templates 上更新资源的 requests/limits 更新一个资源的注解 更新在这个资源上的 labels 更新一个或者多个 node 上的 taints Username 为 Docker registry authentication 显示最后的 resource/object 的 last-applied-configuration annotations 显示 rollout 历史 输出到 files.  如果是 empty or '-' 使用 stdout, 否则创建一个 目录层级在那个目录 dummy restart flag) kubectl 控制 Kubernetes cluster 管理 