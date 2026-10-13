(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an 'a' followed by anything, ending in 'b'. *)
let rec text_starta_endb (text : string) : bool =
  match text with
  | "" -> false
  | _ ->
      let head = String.sub text 0 1 in
      let tail = String.sub text 1 (String.length text - 1) in
      if head = "a" && text_endb tail then
        true
      else
        text_starta_endb tail

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:24: Unbound value "text_endb" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec text_starta_endb (text : string) : bool =
  match text with
  | "" -> false
  | _ ->
      let head = String.sub text 0 1 in
      let tail = String.sub text 1 (String.length text - 1) in
      if head = "a" && text_endb tail then
        true
      else
        text_starta_endb tail

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:24: Unbound value "text_endb" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec text_starta_endb (text : string) : bool =
  match text with
  | "" -> false
  | _ ->
      let head = String.sub text 0 1 in
      let tail = String.sub text 1 (String.length text - 1) in
      if head = "a" && text_endb tail then
        true
      else
        text_starta_endb tail

let () =
  let text = read_line () in
  (* TODO: Implement the text_starta_endb function *)
  if text_starta_endb text then
    Printf.printf "Yes\n"
  else
    Printf.printf "No\n"

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:24: Unbound value "text_endb" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec text_starta_endb (text : string) : bool =
  match text with
  | "" -> false
  | _ ->
      let head = String.sub text 0 1 in
      let tail = String.sub text 1 (String.length text - 1) in
      if head = "a" && text_endb tail then
        true
      else
        text_starta_endb tail

let () =
  let text = read_line () in
  (* TODO: Implement the text_starta_endb function *)
  if text_starta_endb text then
    Printf.printf "Yes\n"
  else
    Printf.printf "No\n"

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:24: Unbound value "text_endb" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec text_starta_endb (text : string) : bool =
  match text with
  | "" -> false
  | _ ->
      let head = String.sub text 0 1 in
      let tail = String.sub text 1 (String.length text - 1) in
      if head = "a" && text_endb tail then
        true
      else
        text_starta_endb tail

let () =
  let text = read_line () in
  (* TODO: Implement the text_starta_endb function *)
  if text_starta_endb text then
    Printf.printf "Yes\n"
  else
    Printf.printf "No\n"

