# Changelog

## 1.2.0

Initial release of 26.8 support.

- Add `client_provider`, `client_table`, `cluster_sim_link`, `cluster_topo_link`, `deviation`, `sim_link`, and `sim_node` resources and data sources.
- Remove the `transaction_pipeline` resource and data source.

## 1.1.1

- Mark the `client_secret` provider attribute as sensitive and fix provider configuration handling.

## 1.1.0

- Add `alarm_policy`, `branch`, `cluster_provider`, `log_output`, `node_security_profile`, `pipeline_definition`, `satellite_profile`, and `transaction_pipeline` resources and data sources.
- Add satellite node configuration on `topo_node`.

## 1.0.2

- Add DHCP option 56-NTPServers to the list of allowed values.

## 1.0.1

- Fix K8s Patch operation for the resource.

## 1.0.0

Initial release.

## 0.2.0

- Disambiguate same-named fields while keeping the original names. In the previous release, repeated fields had a suffix appended to the elements that had the same name anywhere in the schema. This prevented users from using the resource fields as seen in the API documentation (with the exception of fields using snake_case instead of camelCase to adhere to Terraform's naming conventions).  
With this release, the fields are named exactly as they appear in the API/CRD documentation.

## 0.1.0

Initial Beta release.
