(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given two positive integers a and b, return the even digits between a *)
(*     and b, in ascending order. *)
(*     For example: *)
(*     >>> generate_integers 2 8 *)
(*     [2; 4; 6; 8] *)
(*     >>> generate_integers 8 2 *)
(*     [2; 4; 6; 8] *)
(*     >>> generate_integers 10 14 *)
(*     [] *)
let rec generate_integers (a : int) (b : int) : int list =
  if a > b then
    generate_integers b a
  else if a = b then
    if a % 2 = 0 then
      [a]
    else
      []
  else
    let low = if a mod 2 = 0 then a else a + 1 in
    let high = if b mod 2 = 0 then b else b - 1 in
    List.init ((high - low) / 2 + 1) (fun i -> low + i * 2)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:10: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec generate_integers (a : int) (b : int) : int list =
  if a > b then
    generate_integers b a
  else if a mod 2 = 0 then
    if b mod 2 = 0 then
      let diff = b - a in
      let length = diff / 2 + 1 in
      List.init length (fun i -> a + 2 * i)
    else
      let diff = b - a + 1 in
      let length = diff / 2 in
      List.init length (fun i -> a + 2 * i)
  else
    if b mod 2 = 0 then
      let diff = b - a in
      let length = diff / 2 in
      List.init length (fun i -> a + 2 * i)
    else
      let diff = b - a in
      let length = diff / 2 in
      List.init length (fun i -> a + 2 * i)

