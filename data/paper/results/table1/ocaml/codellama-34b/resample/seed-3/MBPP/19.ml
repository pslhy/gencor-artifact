(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find whether a given list of integers contains any duplicate element. *)
let rec test_duplicate (arraynums : int list) : bool =
  if(arraynums.Length = 0) then false
  else begin
    let cur_num = arraynums(0)
    let rec helper (i: int) =
      if (i < (arraynums.Length - 1)) then
        if (arraynums.agg(i + 1) = cur_num) then true
        else helper(i + 1)
  end

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:23: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec test_duplicate (arraynums : int list) : bool =
  if(arraynums.Length = 0) then false
  else begin
    let cur_num = arraynums.(0)
    let rec helper (i: int) =
      if (i < (arraynums.Length - 1)) then
        if (arraynums.(i + 1) = cur_num) then true
        else helper(i + 1)
      else false
  end

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:23: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec test_duplicate (arraynums : int list) : bool =
  if(arraynums.Length = 0) then false
  else begin
    let cur_num = arraynums.(0)
    let rec helper (i: int) =
      if (i < (arraynums.Length - 1)) then
        if (arraynums.(i + 1) = cur_num) then true
        else helper(i + 1)
      else false
  end

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:23: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec test_duplicate (arraynums : int list) : bool =
  match arraynums with
  | [] -> false
  | hd :: tl ->
    let cur_num = hd in
    let rec helper (i : int) =
      if (i < (List.length tl - 1)) then
        if (List.nth tl i = cur_num) then true
        else helper (i + 1)
      else false
    in helper 0

