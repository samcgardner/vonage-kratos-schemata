local claims = std.extVar('claims');
{
  identity: {
    traits: {
      // For a human readable identifier, consider using the "preferred_username" claim.
      [if 'email' in claims then 'email' else null]: claims.email,
    },
  },
}
