# AGENTS.md - Development Guidelines for Dotfiles Repository

## Overview

This repository provides a cross-platform dotfiles management system with automated setup scripts and configuration data. The core functionality centers on setup scripts that read CSV data files to create symlinks and manage configuration files across different operating systems.

## Build/Lint/Test Commands

### Data File Validation

```bash
# Validate CSV data files
# Check symlinks.csv format (source,dest_dir,dest_file)
awk -F',' 'NF != 3 {print "Invalid line:", NR, $0}' symlinks.csv linux/symlinks.csv darwin/symlinks.csv

# Validate CSV syntax
python3 -c "import csv; [print(f'Error in {f}') for f in ['symlinks.csv', 'linux/symlinks.csv', 'darwin/symlinks.csv'] if not all(len(row)==3 for row in csv.reader(open(f)))]"
```

### CSV Data Files

- **Format**: source_path,destination_directory,destination_filename
- **Delimiter**: Comma only, no spaces around commas
- **Quoting**: No quotes needed for simple paths
- **Validation**: Ensure all source files exist before committing

### Directory Structure

- **Root level**: Core scripts (setconfigs) and shared data (symlinks.csv)
- **Platform dirs**: OS-specific scripts and data (linux/, darwin/)
- **Tool dirs**: Tool-specific configurations (helix/, zsh/, etc.)
- **Archive dir**: Historical configs (.archive/)

### Error Handling

- **Setup failures**: Exit with clear error messages
- **Missing files**: Warn and skip rather than fail completely
- **Backup conflicts**: Always create timestamped backups
- **Platform detection**: Robust OS detection with fallback

### Security Practices

- **File permissions**: Set appropriate permissions on scripts (755)
- **Path validation**: Validate all paths before operations
- **No secrets**: Never store credentials or keys
- **Safe operations**: Use `--dry-run` option for testing

### Git Practices

- **Commit messages**: Clear, descriptive conventional commits
- **File organization**: Keep related functionality together
- **Testing**: Test setup scripts on both platforms before committing
- **Documentation**: Update README.md when adding new tools or platforms

## Testing Strategy

### Setup Script Testing

- **Dry runs**: Test with `--dry-run` flag to verify logic without changes
- **Platform testing**: Test on both Darwin and Linux systems
- **Backup verification**: Ensure backup creation works correctly
- **Rollback testing**: Verify ability to restore from backups

### Data Validation

- **File existence**: All referenced source files must exist
- **Path validity**: All destination directories must be valid
- **CSV format**: Strict validation of data file format
- **Cross-platform**: Test data works on both supported platforms

## Documentation Standards

- **README updates**: Keep program list and setup instructions current
- **Inline comments**: Document complex logic in setup scripts
- **CSV headers**: Document column meanings in data files
- **Platform notes**: Document OS-specific requirements and differences

## Performance Considerations

- **Script execution**: Minimize filesystem operations in loops
- **Path resolution**: Cache expensive path operations
- **Error checking**: Efficient validation without redundant checks
- **Memory usage**: Process CSV files line-by-line for large datasets

This AGENTS.md serves as the definitive guide for maintaining the dotfiles management system. Focus on the core setup functionality and data-driven configuration management.</content>
<parameter name="filePath">/home/buraku/konfu/dotfiles/AGENTS.md
