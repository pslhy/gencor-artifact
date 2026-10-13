(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to reverse words seperated by spaces in a given string. *)
let rec reverse_words (s : string) : string =
  match s with
  | "" -> ""
  | s -> 
      let space_pos = String.index_opt s ' ' in
      match space_pos with
      | Some pos -> 
          let (front, back) = String.split_at s pos in
          let (_, back) = String.lstrip back in
          back ^ " " ^ reverse_words front
      | None -> String.rev s

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:31: Unbound value "String.split_at" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec reverse_words (s : string) : string =
  if s = "" then ""
  else
    let space_pos = String.index s ' ' in
    if space_pos = -1 then String.rev s
    else
      let (front, back) = String.sub s 0 space_pos, String.sub s (space_pos + 1) (String.length s - space_pos - 1) in
      let (_, back) = String.lstrip back in
      back ^ " " ^ reverse_words front

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:28: Unbound value "String.rev" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec reverse_words (s : string) : string =
  if s = "" then ""
  else 
    let space_pos = String.index s ' ' in
    if space_pos = -1 then String.sub s 0 (String.length s)
    else 
      let (front, back) = String.sub s 0 space_pos, String.sub s (space_pos + 1) (String.length s - space_pos - 1) in
      let (_, back) = String.lstrip back in
      back ^ " " ^ reverse_words front

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:23: Unbound value "String.lstrip" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec reverse_words (s : string) : string =
  if s = "" then ""
  else
    match String.rindex s ' ' with
    | exception Not_found -> String.rev s
    | space_pos ->
        let (front, back) = String.sub s 0 space_pos, String.sub s (space_pos + 1) (String.length s - space_pos - 1) in
        let front = String.rev front in
        back ^ " " ^ reverse_words front

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:30: Unbound value "String.rev" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec reverse_words (s : string) : string =
  if s = "" then ""
  else
    match String.rindex s ' ' with
    | exception Not_found -> String.sub s 0 (String.length s)
    | space_pos ->
        let (front, back) = String.sub s 0 space_pos, String.sub s (space_pos + 1) (String.length s - space_pos - 1) in
        let front = String.sub (String.rev front) 1 (String.length front - 1) in
        back ^ " " ^ reverse_words front

