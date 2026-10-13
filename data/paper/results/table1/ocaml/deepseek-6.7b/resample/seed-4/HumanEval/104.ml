(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given a list of positive integers x. return a sorted list of all *)
(*     elements that hasn't any even digit. *)
(*     Note: Returned list should be sorted in increasing order. *)
(*     For example: *)
(*     >>> unique_digits [15; 33; 1422; 1] *)
(*     [1; 15; 33] *)
(*     >>> unique_digits [152; 323; 1422; 10] *)
(*     [] *)
let rec unique_digits (x : int list) : int list =
  let has_even_digit n =
    let rec helper n =
      match n with
      | 0 -> false
      | _ when n mod 2 = 0 -> true
      | _ -> helper (n / 10)
    in
    helper (abs n)
  in
  x |> List.filter (not << has_even_digit) |> List.sort compare

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:25: Unbound value "(<<)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec unique_digits (x : int list) : int list =
  let has_even_digit n =
    let rec helper n =
      match n with
      | 0 -> false
      | _ when n mod 2 = 0 -> true
      | _ -> helper (n / 10)
    in
    helper (abs n)
  in
  x |> List.filter (not % has_even_digit) |> List.sort compare

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:25: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec unique_digits (x : int list) : int list =
  let has_even_digit n =
    let rec helper n =
      match n with
      | 0 -> false
      | _ when n mod 2 = 0 -> true
      | _ -> helper (n / 10)
    in
    helper (abs n)
  in
  x |> List.filter (fun n -> not (has_even_digit n)) |> List.sort compare

