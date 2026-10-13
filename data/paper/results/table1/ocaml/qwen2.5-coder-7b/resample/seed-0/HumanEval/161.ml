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
  let is_letter c = Char.uppercase_ascii c <> c in
  let rec helper i acc =
    if i = -1 then acc
    else 
      let c = s.[i] in
      if is_letter c then 
        helper (i - 1) (Char.toggle_case c :: acc)
      else 
        helper (i - 1) (c :: acc)
  in
  if List.for_all (fun c -> not (is_letter c)) (List.of_seq (String.to_seq s)) then
    String.rev s
  else
    helper (String.length s - 1) []

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:25: Unbound value "Char.toggle_case" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec solve (s : string) : string = 
  let is_letter c = Char.uppercase_ascii c <> c in
  let rec helper i acc =
    if i = -1 then acc
    else 
      let c = s.[i] in
      if is_letter c then 
        if Char.is_uppercase_ascii c then
          helper (i - 1) (Char.lowercase_ascii c :: acc)
        else
          helper (i - 1) (Char.uppercase_ascii c :: acc)
      else 
        helper (i - 1) (c :: acc)
  in
  if List.for_all (fun c -> not (is_letter c)) (List.of_seq (String.to_seq s)) then
    String.rev s
  else
    helper (String.length s - 1) []

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:12: Unbound value "Char.is_uppercase_ascii" *)
(*     Hint: Did you mean "uppercase_ascii"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec solve (s : string) : string = 
  let is_letter c = Char.uppercase_ascii c <> c in
  let rec helper i acc =
    if i = -1 then acc
    else 
      let c = s.[i] in
      if is_letter c then 
        if Char.uppercase_ascii c = c then
          helper (i - 1) (Char.lowercase_ascii c :: acc)
        else
          helper (i - 1) (Char.uppercase_ascii c :: acc)
      else 
        helper (i - 1) (c :: acc)
  in
  if List.for_all (fun c -> not (is_letter c)) (List.of_seq (String.to_seq s)) then
    String.rev s
  else
    helper (String.length s - 1) []

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:16:5: Unbound value "String.rev" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec solve (s : string) : string = 
  let is_letter c = Char.uppercase_ascii c <> c in
  let rec helper i acc =
    if i = -1 then acc
    else 
      let c = s.[i] in
      if is_letter c then 
        if Char.uppercase_ascii c = c then
          helper (i - 1) (Char.lowercase_ascii c :: acc)
        else
          helper (i - 1) (Char.uppercase_ascii c :: acc)
      else 
        helper (i - 1) (c :: acc)
  in
  if List.for_all (fun c -> not (is_letter c)) (List.of_seq (String.to_seq s)) then
    (List.fold_left (fun acc c -> c :: acc) [] (String.to_list s))
  else
    helper (String.length s - 1) []

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:16:49: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec solve (s : string) : string = 
  let is_letter c = Char.uppercase_ascii c <> c in
  let rec helper i acc =
    if i = -1 then acc
    else 
      let c = s.[i] in
      if is_letter c then 
        if Char.uppercase_ascii c = c then
          helper (i - 1) (Char.lowercase_ascii c :: acc)
        else
          helper (i - 1) (Char.uppercase_ascii c :: acc)
      else 
        helper (i - 1) (c :: acc)
  in
  if List.for_all (fun c -> not (is_letter c)) (List.of_seq (String.to_seq s)) then
    (List.fold_left (fun acc c -> c :: acc) [] (str |> String.to_seq |> Seq.toList))
  else
    helper (String.length s - 1) []

