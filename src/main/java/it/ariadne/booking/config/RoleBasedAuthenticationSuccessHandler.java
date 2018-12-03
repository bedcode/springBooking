package it.ariadne.booking.config;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;

public class RoleBasedAuthenticationSuccessHandler extends SimpleUrlAuthenticationSuccessHandler
		implements AuthenticationSuccessHandler {

	private String adminRoleTargetUrl;

	private String adminRoleAuthority;

	/**
	 * @param defaultTargetUrl
	 */
	public RoleBasedAuthenticationSuccessHandler(String defaultTargetUrl, String adminRoleTargetUrl,
			String adminRoleAuthority) {
		super(defaultTargetUrl);
		this.adminRoleTargetUrl = adminRoleTargetUrl;
		this.adminRoleAuthority = adminRoleAuthority;
	}

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		if (isAdmin(authentication)) {
			this.getRedirectStrategy().sendRedirect(request, response, this.getAdminRoleTargetUrl());
			return;
		}
		super.onAuthenticationSuccess(request, response, authentication);
	}

	protected boolean isAdmin(Authentication authentication) {
		for (GrantedAuthority authority : authentication.getAuthorities()) {
			if (authority.getAuthority().equals(this.getAdminRoleAuthority())) {
				return true;
			}
		}
		return false;
	}

	public String getAdminRoleTargetUrl() {
		return adminRoleTargetUrl;
	}

	public String getAdminRoleAuthority() {
		return adminRoleAuthority;
	}

}