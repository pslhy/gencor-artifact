(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to convert the given snake case string to camel case string. *)
let rec snake_to_camel (word : string) : string = 
  let rec helper chars acc = 
    match chars with 
    | [] -> List.rev acc 
    | '_' :: rest -> helper rest acc 
    | c :: rest -> helper rest (c :: acc) 
  in 
  let chars = String.to_seq word |> Seq.rev |> Seq.toList in 
  let capitalized_chars = List.map (fun c -> if c = ' ' then '_' else Char.uppercase_ascii c) chars in 
  String.concat "" (helper capitalized_chars [])


(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:48: Unbound value "Seq.toList" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec snake_to_camel (word : string) : string = 
  let rec helper chars acc = 
    match chars with 
    | [] -> List.rev acc 
    | '_' :: rest -> helper rest acc 
    | c :: rest -> helper rest (c :: acc) 
  in 
  let chars = Stream.to_list (Stream.of_string word |> Stream.rev) in 
  let capitalized_chars = List.map (fun c -> if c = ' ' then '_' else Char.uppercase_ascii c) chars in 
  String.concat "" (helper capitalized_chars [])
``
(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:2: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec snake_to_camel (word : string) : string = 
  let rec helper chars acc = 
    match chars with 
    | [] -> List.rev acc 
    | '_' :: rest -> helper rest acc 
    | c :: rest -> helper rest (c :: acc) 
  in 
  let chars = String.to_seq word |> Seq.rev |> Seq.toList in 
  let capitalized_chars = List.map (fun c -> if c = '_' then ' ' else Char.uppercase_ascii c) chars in 
  String.concat "" (helper capitalized_chars [])

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:48: Unbound value "Seq.toList" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec snake_to_camel (word : string) : string = 
  let rec helper chars acc = 
    match chars with 
    | [] -> List.rev acc 
    | '_' :: rest -> helper rest acc 
    | c :: rest -> helper rest (c :: acc) 
  in 
  let chars = String.to_seq word |> Seq.rev |> Seq.toList in 
  let capitalized_chars = List.map (fun c -> if c = '_' then ' ' else Char.uppercase_ascii c) chars in 
  String.concat "" (helper capitalized_chars [])

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:48: Unbound value "Seq.toList" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec snake_to_camel (word : string) : string = 
  let rec helper chars acc = 
    match chars with 
    | [] -> List.rev acc 
    | '_' :: rest -> helper rest acc 
    | c :: rest -> helper rest (c :: acc) 
  in 
  let chars = String.to_seq word |> Seq.rev |> Seq.to_list in 
  let capitalized_chars = List.map (fun c -> if c = '_' then ' ' else Char.uppercase_ascii c) chars in 
  String.concat "" (helper capitalized_chars [])

