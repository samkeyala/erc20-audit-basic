# Audit Report – ERC20 BasicToken

**Date:** June 28, 2025  
**Auditor:** Samuel Mwanza  
**Contract Audited:** `contracts/ERC20.sol`

## Tools Used
- Slither
- MythX (via Remix)
- Manual review

## Findings
| Severity | Issue | Description |
|----------|-------|-------------|
| High | No overflow protection | Solidity <0.8 doesn't auto-check overflows. |
| Medium | Incomplete ERC20 | Missing `approve()` and `transferFrom()` |
| Low | No Access Control | No admin features, but ok for a basic token |

## Recommendations
- Upgrade to Solidity ^0.8.0
- Use OpenZeppelin contracts for safer standard
