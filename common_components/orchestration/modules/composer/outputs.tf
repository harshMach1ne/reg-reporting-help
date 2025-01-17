# Copyright 2022 Google LLC

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at

#     https://www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


output "airflow_uri" {
  description = "Airflow URI"
  value       = (length(google_composer_environment.composer_env)==1 ?
                    google_composer_environment.composer_env[0].config.0.airflow_uri : "")
}

output "airflow_dag_gcs_prefix" {
  description = "Airflow GCS DAG prefix"
  value       = (length(google_composer_environment.composer_env)==1 ?
                    google_composer_environment.composer_env[0].config.0.dag_gcs_prefix : "")
}

output "airflow_gke_host" {
  description = "Airflow GKE Host"
  value       = (length(google_composer_environment.composer_env)==1 ?
                    module.gke_auth[0].host : "")
}

output "airflow_gke_cluster" {
  description = "Airflow GKE Cluster"
  value       = (length(google_composer_environment.composer_env)==1 ?
                    google_composer_environment.composer_env[0].config.0.gke_cluster : "")
}
