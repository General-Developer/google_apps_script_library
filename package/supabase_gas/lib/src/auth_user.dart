import 'package:supabase_gas/fork/gotrue/gotrue.dart' show User;

@Deprecated('No longer used. May be removed in the future.')
class AuthUser extends User {
  AuthUser({
    required super.id,
    required super.appMetadata,
    required super.userMetadata,
    required super.aud,
    required super.email,
    required super.phone,
    required super.createdAt,
    super.confirmedAt,
    super.emailConfirmedAt,
    super.phoneConfirmedAt,
    super.lastSignInAt,
    required super.role,
    required super.updatedAt,
  });
}
