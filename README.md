# Sample SQL Scripts

A collection of practical SQL Server scripts covering real-world database operations, troubleshooting, and schema management patterns.

This repository is structured as a reference toolkit for database engineers, data scientists, or backend developers working with relational systems.

It focuses on *applied SQL patterns* rather than isolated examples.

---

## Real-world Use Cases

- Safely dropping a column without breaking dependencies
- Diagnosing slow queries via active session inspection
- Bulk importing Excel data into staging tables
- Temporarily disabling constraints during data migrations

---

## Repository Structure

Scripts are grouped by operational domain:

### Access Database Engine
System-level configuration and advanced SQL Server features.

- Enable ad-hoc distributed queries
- Enable `xp_cmdshell`

---

### Common
Reusable utility patterns for data manipulation.

- Bulk insert patterns (Excel import scenarios)
- Duplicate detection and cleanup

---

### Constraints
Schema introspection and relational analysis.

- Foreign key relationship discovery
- Constraint mapping and dependency analysis
- Column reference tracing

---

### Logging
Error handling and auditing patterns for production systems.

- Error logging table design
- Stored procedure logging patterns
- Transaction tracking examples

---

### Metadata
Database introspection utilities.

- Schema metadata extraction
- Object size and structure analysis

---

### Operations
Core SQL execution patterns and maintenance scripts.

- Cursor-based processing examples
- Dynamic SQL execution patterns
- Merge operations
- Schema/table manipulation utilities

---

### Triage
Production debugging and operational diagnostics.

- Active session monitoring
- Connection counting
- Constraint enable/disable workflows
- Statistics cleanup
- Login troubleshooting utilities

---

## Purpose

This repository is intended to demonstrate:

- practical SQL Server operational knowledge
- debugging and triage techniques used in production environments
- schema analysis and dependency tracing
- real-world database maintenance patterns

It is a working reference of SQL patterns used in backend and data engineering contexts.

---

## Usage

Each script can be executed independently in a SQL Server environment such as:

- SQL Server Management Studio (SSMS)
- Azure Data Studio

Scripts are self-contained and designed to be copy/paste executable with minimal modification.

---

## Contributing

Contributions are welcome. Please ensure scripts:

- are production-relevant or educationally meaningful
- include clear naming and intent
- follow SQL Server best practices where applicable

---

## License

MIT
