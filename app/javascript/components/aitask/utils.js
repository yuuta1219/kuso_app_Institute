export function getCsrfToken() {
  const metaTag = document.querySelector('meta[name="csrf-token"]');

  if (!metaTag) {
    console.error('CSRF token meta tag not found');
    return null;
  }

  return metaTag.getAttribute('content');
}
