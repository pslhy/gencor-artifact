(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Input to this function is a string containing multiple groups of nested parentheses. Your goal is to *)
(*     separate those group into separate strings and return the list of those. *)
(*     Separate groups are balanced (each open brace is properly closed) and not nested within each other *)
(*     Ignore any spaces in the input string. *)
(*     >>> separate_paren_groups "( ) (( )) (( )( ))" *)
(*     ["()"; "(())"; "(()())"] *)
let rec separate_paren_groups (paren_string : string) : string list =
  let len = String.length paren_string in
  let rec aux i acc =
    if i = len then List.rev acc
    else
      let c = String.get paren_string i in
      if c = '(' then
        let j, k = find_matching_paren i in
        if j = -1 then List.rev (String.make (i + 1) '(' :: acc)
        else aux j (String.sub paren_string i (j - i + 1) :: acc)
      else aux (i + 1) acc
  in
  aux 0 []

and find_matching_paren i =
  let rec aux i count =
    if i >= len || count < 0 then -1
    else
      let c = String.get paren_string i in
      if c = '(' then aux (i + 1) (count + 1)
      else if c = ')' then aux (i + 1) (count - 1)
      else aux (i + 1) count
  in
  aux i 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:17:13: Unbound value "len" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec separate_paren_groups (paren_string : string) : string list =
  let str_len = String.length paren_string in
  let rec aux i acc =
    if i = str_len then List.rev acc
    else
      let c = String.get paren_string i in
      if c = '(' then
        let j, k = find_matching_paren i in
        if j = -1 then List.rev (String.make (i - j) '(' :: acc)
        else aux j (String.sub paren_string i (j - i + 1) :: acc)
      else aux (i + 1) acc
  in
  aux 0 []

and find_matching_paren i =
  let rec aux i count =
    if i >= str_len || count < 0 then -1
    else
      let c = String.get paren_string i in
      if c = '(' then aux (i + 1) (count + 1)
      else if c = ')' then aux (i + 1) (count - 1)
      else aux (i + 1) count
  in
  aux i 0

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:17:13: Unbound value "str_len" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec separate_paren_groups (paren_string : string) : string list =
  let str_len = String.length paren_string in
  let rec aux i acc =
    if i = str_len then List.rev acc
    else
      let c = String.get paren_string i in
      if c = '(' then
        let j, k = find_matching_paren i in
        if j = -1 then List.rev (String.make (i - j) '(' :: acc)
        else aux j (String.sub paren_string i (j - i + 1) :: acc)
      else aux (i + 1) acc
  in
  aux 0 []

and find_matching_paren i =
  let rec aux i count =
    if i >= str_len || count < 0 then -1
    else
      let c = String.get paren_string i in
      if c = '(' then aux (i + 1) (count + 1)
      else if c = ')' then aux (i + 1) (count - 1)
      else aux (i + 1) count
  in
  aux i 0

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:17:13: Unbound value "str_len" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec separate_paren_groups (paren_string : string) : string list =
  let str_len = String.length paren_string in
  let rec aux i acc =
    if i = str_len then List.rev acc
    else
      let c = String.get paren_string i in
      if c = '(' then
        let j, k = find_matching_paren i in
        if j = -1 then List.rev (String.make (i - j) '(' :: acc)
        else aux j (String.sub paren_string i (j - i + 1) :: acc)
      else aux (i + 1) acc
  in
  aux 0 []

and find_matching_paren i =
  let rec aux i count =
    if i >= str_len || count < 0 then (-1, -1)
    else
      let c = String.get paren_string i in
      if c = '(' then aux (i + 1) (count + 1)
      else if c = ')' then aux (i + 1) (count - 1)
      else aux (i + 1) count
  in
  aux i 0

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:17:13: Unbound value "str_len" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec separate_paren_groups (paren_string : string) : string list =
  let rec aux i acc =
    if i = String.length paren_string then List.rev acc
    else
      let c = String.get paren_string i in
      if c = '(' then
        let j, k = find_matching_paren i in
        if j = -1 then List.rev (String.make (i - j) '(' :: acc)
        else aux j (String.sub paren_string i (j - i + 1) :: acc)
      else aux (i + 1) acc
  in
  aux 0 []

and find_matching_paren i =
  let rec aux i count =
    if i >= String.length paren_string || count < 0 then (-1, -1)
    else
      let c = String.get paren_string i in
      if c = '(' then aux (i + 1) (count + 1)
      else if c = ')' then aux (i + 1) (count - 1)
      else aux (i + 1) count
  in
  aux i 0

