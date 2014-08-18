//------------------------------------------------------------------------------
// Copyright 2013 Proletariat Inc. All rights reserved.
// Owner : Joe Mukai
//------------------------------------------------------------------------------
package pg;

class PostgresErrorCodes {

    // Class 00 — Successful Completion
    public static inline var SUCCESSFUL_COMPLETION = '0';

    // Class 01 — Warning
    public static inline var WARNING = '1000';
    public static inline var DYNAMIC_RESULT_SETS_RETURNED  = '0100C';
    public static inline var IMPLICIT_ZERO_BIT_PADDING = '1008';
    public static inline var NULL_VALUE_ELIMINATED_IN_SET_FUNCTION = '1003';
    public static inline var PRIVILEGE_NOT_GRANTED = '1007';
    public static inline var PRIVILEGE_NOT_REVOKED = '1006';
    public static inline var WARNING_STRING_DATA_RIGHT_TRUNCATION  = '1004';
    public static inline var DEPRECATED_FEATURE  = '01P01';

    // Class 02 — No Data (this is also a warning class per the SQL standard)
    public static inline var NO_DATA = '2000';
    public static inline var NO_ADDITIONAL_DYNAMIC_RESULT_SETS_RETURNED  = '2001';

    // Class 03 — SQL Statement Not Yet Complete
    public static inline var SQL_STATEMENT_NOT_YET_COMPLETE  = '3000';

    // Class 08 — Connection Exception
    public static inline var CONNECTION_EXCEPTION  = '8000';
    public static inline var CONNECTION_DOES_NOT_EXIST = '8003';
    public static inline var CONNECTION_FAILURE  = '8006';
    public static inline var SQLCLIENT_UNABLE_TO_ESTABLISH_SQLCONNECTION = '8001';
    public static inline var SQLSERVER_REJECTED_ESTABLISHMENT_OF_SQLCONNECTION = '8004';
    public static inline var TRANSACTION_RESOLUTION_UNKNOWN  = '8007';
    public static inline var PROTOCOL_VIOLATION  = '08P01';

    // Class 09 — Triggered Action Exception
    public static inline var TRIGGERED_ACTION_EXCEPTION  = '9000';

    // Class 0A — Feature Not Supported
    public static inline var FEATURE_NOT_SUPPORTED = '0A000';

    // Class 0B — Invalid Transaction Initiation
    public static inline var INVALID_TRANSACTION_INITIATION  = '0B000';

    // Class 0F — Locator Exception
    public static inline var LOCATOR_EXCEPTION = '0F000';
    public static inline var INVALID_LOCATOR_SPECIFICATION = '0F001';

    // Class 0L — Invalid Grantor
    public static inline var INVALID_GRANTOR = '0L000';
    public static inline var INVALID_GRANT_OPERATION = '0LP01';

    // Class 0P — Invalid Role Specification
    public static inline var INVALID_ROLE_SPECIFICATION  = '0P000';

    // Class 0Z — Diagnostics Exception
    public static inline var DIAGNOSTICS_EXCEPTION = '0Z000';
    public static inline var STACKED_DIAGNOSTICS_ACCESSED_WITHOUT_ACTIVE_HANDLER = '0Z002';

    // Class 20 — Case Not Found
    public static inline var CASE_NOT_FOUND  = '20000';

    // Class 21 — Cardinality Violation
    public static inline var CARDINALITY_VIOLATION = '21000';

    // Class 22 — Data Exception
    public static inline var DATA_EXCEPTION  = '22000';
    public static inline var ARRAY_SUBSCRIPT_ERROR = '2202E';
    public static inline var CHARACTER_NOT_IN_REPERTOIRE = '22021';
    public static inline var DATETIME_FIELD_OVERFLOW = '22008';
    public static inline var DIVISION_BY_ZERO  = '22012';
    public static inline var ERROR_IN_ASSIGNMENT = '22005';
    public static inline var ESCAPE_CHARACTER_CONFLICT = '2200B';
    public static inline var INDICATOR_OVERFLOW  = '22022';
    public static inline var INTERVAL_FIELD_OVERFLOW = '22015';
    public static inline var INVALID_ARGUMENT_FOR_LOGARITHM  = '2201E';
    public static inline var INVALID_ARGUMENT_FOR_NTILE_FUNCTION = '22014';
    public static inline var INVALID_ARGUMENT_FOR_NTH_VALUE_FUNCTION = '22016';
    public static inline var INVALID_ARGUMENT_FOR_POWER_FUNCTION = '2201F';
    public static inline var INVALID_ARGUMENT_FOR_WIDTH_BUCKET_FUNCTION  = '2201G';
    public static inline var INVALID_CHARACTER_VALUE_FOR_CAST  = '22018';
    public static inline var INVALID_DATETIME_FORMAT = '22007';
    public static inline var INVALID_ESCAPE_CHARACTER  = '22019';
    public static inline var INVALID_ESCAPE_OCTET  = '2200D';
    public static inline var INVALID_ESCAPE_SEQUENCE = '22025';
    public static inline var NONSTANDARD_USE_OF_ESCAPE_CHARACTER = '22P06';
    public static inline var INVALID_INDICATOR_PARAMETER_VALUE = '22010';
    public static inline var INVALID_PARAMETER_VALUE = '22023';
    public static inline var INVALID_REGULAR_EXPRESSION  = '2201B';
    public static inline var INVALID_ROW_COUNT_IN_LIMIT_CLAUSE = '2201W';
    public static inline var INVALID_ROW_COUNT_IN_RESULT_OFFSET_CLAUSE = '2201X';
    public static inline var INVALID_TIME_ZONE_DISPLACEMENT_VALUE  = '22009';
    public static inline var INVALID_USE_OF_ESCAPE_CHARACTER = '2200C';
    public static inline var MOST_SPECIFIC_TYPE_MISMATCH = '2200G';
    public static inline var NULL_VALUE_NOT_ALLOWED  = '22004';
    public static inline var NULL_VALUE_NO_INDICATOR_PARAMETER = '22002';
    public static inline var NUMERIC_VALUE_OUT_OF_RANGE  = '22003';
    public static inline var STRING_DATA_LENGTH_MISMATCH = '22026';
    public static inline var STRING_DATA_RIGHT_TRUNCATION  = '22001';
    public static inline var SUBSTRING_ERROR = '22011';
    public static inline var TRIM_ERROR  = '22027';
    public static inline var UNTERMINATED_C_STRING = '22024';
    public static inline var ZERO_LENGTH_CHARACTER_STRING  = '2200F';
    public static inline var FLOATING_POINT_EXCEPTION  = '22P01';
    public static inline var INVALID_TEXT_REPRESENTATION = '22P02';
    public static inline var INVALID_BINARY_REPRESENTATION = '22P03';
    public static inline var BAD_COPY_FILE_FORMAT  = '22P04';
    public static inline var UNTRANSLATABLE_CHARACTER  = '22P05';
    public static inline var NOT_AN_XML_DOCUMENT = '2200L';
    public static inline var INVALID_XML_DOCUMENT  = '2200M';
    public static inline var INVALID_XML_CONTENT = '2200N';
    public static inline var INVALID_XML_COMMENT = '2200S';
    public static inline var INVALID_XML_PROCESSING_INSTRUCTION  = '2200T';

    // Class 23 — Integrity Constraint Violation
    public static inline var INTEGRITY_CONSTRAINT_VIOLATION  = '23000';
    public static inline var RESTRICT_VIOLATION  = '23001';
    public static inline var NOT_NULL_VIOLATION  = '23502';
    public static inline var FOREIGN_KEY_VIOLATION = '23503';
    public static inline var UNIQUE_VIOLATION  = '23505';
    public static inline var CHECK_VIOLATION = '23514';
    public static inline var EXCLUSION_VIOLATION = '23P01';

    // Class 24 — Invalid Cursor State
    public static inline var INVALID_CURSOR_STATE  = '24000';

    // Class 25 — Invalid Transaction State
    public static inline var INVALID_TRANSACTION_STATE = '25000';
    public static inline var ACTIVE_SQL_TRANSACTION  = '25001';
    public static inline var BRANCH_TRANSACTION_ALREADY_ACTIVE = '25002';
    public static inline var HELD_CURSOR_REQUIRES_SAME_ISOLATION_LEVEL = '25008';
    public static inline var INAPPROPRIATE_ACCESS_MODE_FOR_BRANCH_TRANSACTION  = '25003';
    public static inline var INAPPROPRIATE_ISOLATION_LEVEL_FOR_BRANCH_TRANSACTION  = '25004';
    public static inline var NO_ACTIVE_SQL_TRANSACTION_FOR_BRANCH_TRANSACTION  = '25005';
    public static inline var READ_ONLY_SQL_TRANSACTION = '25006';
    public static inline var SCHEMA_AND_DATA_STATEMENT_MIXING_NOT_SUPPORTED  = '25007';
    public static inline var NO_ACTIVE_SQL_TRANSACTION = '25P01';
    public static inline var IN_FAILED_SQL_TRANSACTION = '25P02';

    // Class 26 — Invalid SQL Statement Name
    public static inline var INVALID_SQL_STATEMENT_NAME  = '26000';

    // Class 27 — Triggered Data Change Violation
    public static inline var TRIGGERED_DATA_CHANGE_VIOLATION = '27000';

    // Class 28 — Invalid Authorization Specification
    public static inline var INVALID_AUTHORIZATION_SPECIFICATION = '28000';
    public static inline var INVALID_PASSWORD  = '28P01';

    // Class 2B — Dependent Privilege Descriptors Still Exist
    public static inline var DEPENDENT_PRIVILEGE_DESCRIPTORS_STILL_EXIST = '2B000';
    public static inline var DEPENDENT_OBJECTS_STILL_EXIST = '2BP01';

    // Class 2D — Invalid Transaction Termination
    public static inline var INVALID_TRANSACTION_TERMINATION = '2D000';

    // Class 2F — SQL Routine Exception
    public static inline var SQL_ROUTINE_EXCEPTION = '2F000';
    public static inline var FUNCTION_EXECUTED_NO_RETURN_STATEMENT = '2F005';
    public static inline var SQL_ROUTINE_MODIFYING_SQL_DATA_NOT_PERMITTED  = '2F002';
    public static inline var SQL_ROUTINE_PROHIBITED_SQL_STATEMENT_ATTEMPTED  = '2F003';
    public static inline var READING_SQL_DATA_NOT_PERMITTED  = '2F004';

    // Class 34 — Invalid Cursor Name
    public static inline var INVALID_CURSOR_NAME = '34000';

    // Class 38 — External Routine Exception
    public static inline var EXTERNAL_ROUTINE_EXCEPTION  = '38000';
    public static inline var CONTAINING_SQL_NOT_PERMITTED  = '38001';
    public static inline var EXTERNAL_ROUTINE_MODIFYING_SQL_DATA_NOT_PERMITTED  = '38002';
    public static inline var PROHIBITED_SQL_STATEMENT_ATTEMPTED  = '38003';
    public static inline var EXTERNAL_ROUTINE_READING_SQL_DATA_NOT_PERMITTED  = '38004';

    // Class 39 — External Routine Invocation Exception
    public static inline var EXTERNAL_ROUTINE_INVOCATION_EXCEPTION = '39000';
    public static inline var INVALID_SQLSTATE_RETURNED = '39001';
    public static inline var EXTERNAL_ROUTINE_NULL_VALUE_NOT_ALLOWED  = '39004';
    public static inline var TRIGGER_PROTOCOL_VIOLATED = '39P01';
    public static inline var SRF_PROTOCOL_VIOLATED = '39P02';

    // Class 3B — Savepoint Exception
    public static inline var SAVEPOINT_EXCEPTION = '3B000';
    public static inline var INVALID_SAVEPOINT_SPECIFICATION = '3B001';

    // Class 3D — Invalid Catalog Name
    public static inline var INVALID_CATALOG_NAME  = '3D000';

    // Class 3F — Invalid Schema Name
    public static inline var INVALID_SCHEMA_NAME = '3F000';

    // Class 40 — Transaction Rollback
    public static inline var TRANSACTION_ROLLBACK  = '40000';
    public static inline var TRANSACTION_INTEGRITY_CONSTRAINT_VIOLATION  = '40002';
    public static inline var SERIALIZATION_FAILURE = '40001';
    public static inline var STATEMENT_COMPLETION_UNKNOWN  = '40003';
    public static inline var DEADLOCK_DETECTED = '40P01';

    // Class 42 — Syntax Error or Access Rule Violation
    public static inline var SYNTAX_ERROR_OR_ACCESS_RULE_VIOLATION = '42000';
    public static inline var SYNTAX_ERROR  = '42601';
    public static inline var INSUFFICIENT_PRIVILEGE  = '42501';
    public static inline var CANNOT_COERCE = '42846';
    public static inline var GROUPING_ERROR  = '42803';
    public static inline var WINDOWING_ERROR = '42P20';
    public static inline var INVALID_RECURSION = '42P19';
    public static inline var INVALID_FOREIGN_KEY = '42830';
    public static inline var INVALID_NAME  = '42602';
    public static inline var NAME_TOO_LONG = '42622';
    public static inline var RESERVED_NAME = '42939';
    public static inline var DATATYPE_MISMATCH = '42804';
    public static inline var INDETERMINATE_DATATYPE  = '42P18';
    public static inline var COLLATION_MISMATCH  = '42P21';
    public static inline var INDETERMINATE_COLLATION = '42P22';
    public static inline var WRONG_OBJECT_TYPE = '42809';
    public static inline var UNDEFINED_COLUMN  = '42703';
    public static inline var UNDEFINED_FUNCTION  = '42883';
    public static inline var UNDEFINED_TABLE = '42P01';
    public static inline var UNDEFINED_PARAMETER = '42P02';
    public static inline var UNDEFINED_OBJECT  = '42704';
    public static inline var DUPLICATE_COLUMN  = '42701';
    public static inline var DUPLICATE_CURSOR  = '42P03';
    public static inline var DUPLICATE_DATABASE  = '42P04';
    public static inline var DUPLICATE_FUNCTION  = '42723';
    public static inline var DUPLICATE_PREPARED_STATEMENT  = '42P05';
    public static inline var DUPLICATE_SCHEMA  = '42P06';
    public static inline var DUPLICATE_TABLE = '42P07';
    public static inline var DUPLICATE_ALIAS = '42712';
    public static inline var DUPLICATE_OBJECT  = '42710';
    public static inline var AMBIGUOUS_COLUMN  = '42702';
    public static inline var AMBIGUOUS_FUNCTION  = '42725';
    public static inline var AMBIGUOUS_PARAMETER = '42P08';
    public static inline var AMBIGUOUS_ALIAS = '42P09';
    public static inline var INVALID_COLUMN_REFERENCE  = '42P10';
    public static inline var INVALID_COLUMN_DEFINITION = '42611';
    public static inline var INVALID_CURSOR_DEFINITION = '42P11';
    public static inline var INVALID_DATABASE_DEFINITION = '42P12';
    public static inline var INVALID_FUNCTION_DEFINITION = '42P13';
    public static inline var INVALID_PREPARED_STATEMENT_DEFINITION = '42P14';
    public static inline var INVALID_SCHEMA_DEFINITION = '42P15';
    public static inline var INVALID_TABLE_DEFINITION  = '42P16';
    public static inline var INVALID_OBJECT_DEFINITION = '42P17';

    // Class 44 — WITH CHECK OPTION Violation
    public static inline var WITH_CHECK_OPTION_VIOLATION = '44000';

    // Class 53 — Insufficient Resources
    public static inline var INSUFFICIENT_RESOURCES  = '53000';
    public static inline var DISK_FULL = '53100';
    public static inline var OUT_OF_MEMORY = '53200';
    public static inline var TOO_MANY_CONNECTIONS  = '53300';
    public static inline var CONFIGURATION_LIMIT_EXCEEDED  = '53400';

    // Class 54 — Program Limit Exceeded
    public static inline var PROGRAM_LIMIT_EXCEEDED  = '54000';
    public static inline var STATEMENT_TOO_COMPLEX = '54001';
    public static inline var TOO_MANY_COLUMNS  = '54011';
    public static inline var TOO_MANY_ARGUMENTS  = '54023';

    // Class 55 — Object Not In Prerequisite State
    public static inline var OBJECT_NOT_IN_PREREQUISITE_STATE  = '55000';
    public static inline var OBJECT_IN_USE = '55006';
    public static inline var CANT_CHANGE_RUNTIME_PARAM = '55P02';
    public static inline var LOCK_NOT_AVAILABLE  = '55P03';

    // Class 57 — Operator Intervention
    public static inline var OPERATOR_INTERVENTION = '57000';
    public static inline var QUERY_CANCELED  = '57014';
    public static inline var ADMIN_SHUTDOWN  = '57P01';
    public static inline var CRASH_SHUTDOWN  = '57P02';
    public static inline var CANNOT_CONNECT_NOW  = '57P03';
    public static inline var DATABASE_DROPPED  = '57P04';

    // Class 58 — System Error (errors external to PostgreSQL itself)
    public static inline var SYSTEM_ERROR  = '58000';
    public static inline var IO_ERROR  = '58030';
    public static inline var UNDEFINED_FILE  = '58P01';
    public static inline var DUPLICATE_FILE  = '58P02';
    // Class F0 — Configuration File Error
    public static inline var CONFIG_FILE_ERROR = 'F0000';
    public static inline var LOCK_FILE_EXISTS  = 'F0001';

    // Class HV — Foreign Data Wrapper Error (SQL/MED)
    public static inline var FDW_ERROR = 'HV000';
    public static inline var FDW_COLUMN_NAME_NOT_FOUND = 'HV005';
    public static inline var FDW_DYNAMIC_PARAMETER_VALUE_NEEDED  = 'HV002';
    public static inline var FDW_FUNCTION_SEQUENCE_ERROR = 'HV010';
    public static inline var FDW_INCONSISTENT_DESCRIPTOR_INFORMATION = 'HV021';
    public static inline var FDW_INVALID_ATTRIBUTE_VALUE = 'HV024';
    public static inline var FDW_INVALID_COLUMN_NAME = 'HV007';
    public static inline var FDW_INVALID_COLUMN_NUMBER = 'HV008';
    public static inline var FDW_INVALID_DATA_TYPE = 'HV004';
    public static inline var FDW_INVALID_DATA_TYPE_DESCRIPTORS = 'HV006';
    public static inline var FDW_INVALID_DESCRIPTOR_FIELD_IDENTIFIER = 'HV091';
    public static inline var FDW_INVALID_HANDLE  = 'HV00B';
    public static inline var FDW_INVALID_OPTION_INDEX  = 'HV00C';
    public static inline var FDW_INVALID_OPTION_NAME = 'HV00D';
    public static inline var FDW_INVALID_STRING_LENGTH_OR_BUFFER_LENGTH  = 'HV090';
    public static inline var FDW_INVALID_STRING_FORMAT = 'HV00A';
    public static inline var FDW_INVALID_USE_OF_NULL_POINTER = 'HV009';
    public static inline var FDW_TOO_MANY_HANDLES  = 'HV014';
    public static inline var FDW_OUT_OF_MEMORY = 'HV001';
    public static inline var FDW_NO_SCHEMAS  = 'HV00P';
    public static inline var FDW_OPTION_NAME_NOT_FOUND = 'HV00J';
    public static inline var FDW_REPLY_HANDLE  = 'HV00K';
    public static inline var FDW_SCHEMA_NOT_FOUND  = 'HV00Q';
    public static inline var FDW_TABLE_NOT_FOUND = 'HV00R';
    public static inline var FDW_UNABLE_TO_CREATE_EXECUTION  = 'HV00L';
    public static inline var FDW_UNABLE_TO_CREATE_REPLY  = 'HV00M';
    public static inline var FDW_UNABLE_TO_ESTABLISH_CONNECTION  = 'HV00N';

    // Class P0 — PL/pgSQL Error
    public static inline var PLPGSQL_ERROR = 'P0000';
    public static inline var RAISE_EXCEPTION = 'P0001';
    public static inline var NO_DATA_FOUND = 'P0002';
    public static inline var TOO_MANY_ROWS = 'P0003';

    // Class XX — Internal Error
    public static inline var INTERNAL_ERROR  = 'XX000';
    public static inline var DATA_CORRUPTED  = 'XX001';
    public static inline var INDEX_CORRUPTED = 'XX002';

}
