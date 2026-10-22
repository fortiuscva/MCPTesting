# MCPTesting

Business Central AL extension targeting application version 29.0.

## CI/CD

The GitHub Actions workflow in `.github/workflows/ci-cd.yml` compiles the AL app on pull requests and pushes to `main`. A successful push to `main` also deploys the compiled package to the `Cronus29` Business Central sandbox. Manually running the workflow from `main` also performs the deployment. Pull requests never deploy.

### Configure sandbox deployment

Before the first deployment:

1. In the repository's **Settings → Environments**, create an environment named `Cronus29`.
2. Add an environment secret named `AUTHCONTEXT` containing compact JSON with the service principal credentials:

   ```json
   {"TenantID":"<tenant-id>","ClientID":"<application-client-id>","ClientSecret":"<client-secret>"}
   ```

3. Register the Microsoft Entra application for server-to-server authentication with Business Central, grant it the required Business Central API permissions, and add it as an application user in the sandbox with the extension-management permissions needed to publish the app.
4. If deployments should require approval, configure required reviewers for the `Cronus29` GitHub environment.

Keep the secret in GitHub's environment settings; do not add credentials to the repository. The deployment job will fail if the environment credentials or permissions are missing.
