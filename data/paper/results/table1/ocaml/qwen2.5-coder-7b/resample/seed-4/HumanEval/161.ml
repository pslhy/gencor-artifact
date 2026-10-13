(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     You are given a string s. *)
(*     if s[i] is a letter, reverse its case from lower to upper or vise versa, *)
(*     otherwise keep it as it is. *)
(*     If the string contains no letters, reverse the string. *)
(*     The function should return the resulted string. *)
(*     Examples *)
(*     >>> solve "1234" *)
(*     "4321" *)
(*     >>> solve "ab" *)
(*     "AB" *)
(*     >>> solve "#a@C" *)
(*     "#A@c" *)
let rec solve (s : string) : string = 
  let rec helper (chars : char list) : char list =
    match chars with
    | [] -> []
    | ch :: rest when Char.is_alpha ch ->
        if Char.is_uppercase ch then Char.lowercase_ascii ch :: helper rest
        else Char.uppercase_ascii ch :: helper rest
    | ch :: rest -> ch :: helper rest
  in
  let chars = String.to_list s in
  let result = helper chars in
  if List.for_all (fun ch -> not (Char.is_alpha ch)) result then 
    List.rev_map (fun ch -> if ch = '_' then ch else if ch >= 'a' && ch <= 'z' then ch - 32 else ch + 32) chars
  else
    List.rev result

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:23: Unbound value "Char.is_alpha" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec solve (s : string) : string = 
  let rec helper (chars : char list) : char list =
    match chars with
    | [] -> []
    | ch :: rest when Char.is_alphanum ch ->
        if Char.is_uppercase ch then Char.lowercase_ascii ch :: helper rest
        else Char.uppercase_ascii ch :: helper rest
    | ch :: rest -> ch :: helper rest
  in
  let chars = String.to_list s in
  let result = helper chars in
  if List.forall (fun ch -> not (Char.is_alphanum ch)) result then 
    List.rev_map (fun ch -> if ch = '_' then ch else if ch >= 'a' && ch <= 'z' then ch - 32 else ch + 32) chars
  else
    List.rev result

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:23: Unbound value "Char.is_alphanum" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec solve (s : string) : string = 
  let rec helper (chars : char list) : char list =
    match chars with
    | [] -> []
    | ch :: rest when ch >= 'a' && ch <= 'z' || ch >= 'A' && ch <= 'Z' ->
        if ch >= 'a' && ch <= 'z' then Char.uppercase_ascii ch :: helper rest
        else Char.lowercase_ascii ch :: helper rest
    | ch :: rest -> ch :: helper rest
  in
  let chars = String.to_list s in
  let result = helper chars in
  if List.forall (fun ch -> not (ch >= 'a' && ch <= 'z' || ch >= 'A' && ch <= 'Z')) result then 
    List.rev_map (fun ch -> if ch = '_' then ch else if ch >= 'a' && ch <= 'z' then ch - 32 else ch + 32) chars
  else
    List.rev result

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:15: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec solve (s : string) : string = 
  let rec helper (chars : char list) : char list =
    match chars with
    | [] -> []
    | ch :: rest when ch >= 'a' && ch <= 'z' || ch >= 'A' && ch <= 'Z' ->
        if ch >= 'a' && ch <= 'z' then Char.uppercase_ascii ch :: helper rest
        else Char.lowercase_ascii ch :: helper rest
    | ch :: rest -> ch :: helper rest
  in
  let chars = List.init (String.length s) (String.unsafe_get s) in
  let result = helper chars in
  if List.forall (fun ch -> not (ch >= 'a' && ch <= 'z' || ch >= 'A' && ch <= 'Z')) result then 
    List.rev_map (fun ch -> if ch = '_' then ch else if ch >= 'a' && ch <= 'z' then ch - 32 else ch + 32) chars
  else
    List.rev result

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:12:6: Unbound value "List.forall" *)
(*     Hint: Did you mean "for_all"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec solve (s : string) : string = 
  let rec helper (chars : char list) : char list =
    match chars with
    | [] -> []
    | ch :: rest when ch >= 'a' && ch <= 'z' || ch >= 'A' && ch <= 'Z' ->
        if ch >= 'a' && ch <= 'z' then Char.uppercase_ascii ch :: helper rest
        else Char.lowercase_ascii ch :: helper rest
    | ch :: rest -> ch :: helper rest
  in
  let chars = List.init (String.length s) (String.unsafe_get s) in
  let result = helper chars in
  if List.for_all (fun ch -> not (ch >= 'a' && ch <= 'z' || ch >= 'A' && ch <= 'Z')) result then 
    List.rev_map (fun ch -> if ch = '_' then ch else if ch >= 'a' && ch <= 'z' then ch - 32 else ch + 32) chars
  else
    List.rev result

