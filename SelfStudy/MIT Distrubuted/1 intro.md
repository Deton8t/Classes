# Distributed System

## Definition
A group of computers connected by a network
- They are the infrastructure that supports applications

## Why?
1. Connect physically separated machines
2. Parallel processing/work
3. Fault tolerance thru redundancy
4. Security thru redundancy

## History
- LAN in 1980s
    - DNS(domain name service) + email 
- Data centers and big websites 1990s
    - Web search, shopping
    - Birthed web indexing and big data processing
- Cloud computing 2000s
    - Parallelism is improved and technology is even more important
- Current State: active!
    - so many distributed systems in use

Early data center papers are still useful on how to create a solid distributed system;

## Difficulties 
- Many concurrent parts
- Must be able to deal with partial failure
    - Think try/catch
    - Think one PC crashes
    - How does the rest of the network compensate
