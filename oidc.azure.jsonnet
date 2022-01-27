local claims = std.extVar('claims');
{
  identity: {
    traits: {
      // For a human readable identifier, consider using the "preferred_username" claim.
      [if 'email' in claims then 'email' else null]: claims.email,
      name: {
        [if 'given_name' in claims then 'first' else null]: claims.given_name,
        [if 'family_name' in claims then 'last' else null]: claims.family_name,
      },
    },
  },
}
