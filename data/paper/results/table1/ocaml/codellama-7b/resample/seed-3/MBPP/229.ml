(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that takes in a list and an integer n, and re-arranges the first n elements of the given list so that all negative elements appear before positive ones, and where the relative order among negative and positive elements is preserved. *)
let rec re_arrange_array (arr : int list) (n : int) : int list =
  if n = 0 then
    arr
  else
    match arr with
    | [] -> []
    | x :: xs when x < 0 -> -x :: re_arrange_array (re_arrange_array xs n) n
    | x :: xs when x > 0 -> x :: re_arrange_array (re_arrange_array xs n) n
    | _ -> 0 :: re_arrange_array (re_arrange_array xs n) n

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:52: Unbound value "xs" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec re_arrange_array (arr : int list) (n : int) : int list =
  match arr with
  | [] -> []
  | x :: xs when x < 0 -> -x :: re_arrange_array (re_arrange_array xs n) n
  | x :: xs when x > 0 -> x :: re_arrange_array (re_arrange_array xs n) n
  | _ -> 0 :: re_arrange_array (re_arrange_array xs n) n

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:50: Unbound value "xs" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec re_arrange_array (arr : int list) (n : int) : int list =
  match arr with
  | [] -> []
  | x :: xs when x < 0 -> -x :: re_arrange_array xs n
  | x :: xs when x > 0 -> x :: re_arrange_array xs n
  | _ -> 0 :: re_arrange_array xs n

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:32: Unbound value "xs" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec re_arrange_array (arr : int list) (n : int) : int list =
  match arr with
  | [] -> []
  | x :: xs ->
    let n' = n - 1 in
    let rec helper xs n' =
      match xs with
      | [] -> []
      | x :: xs' ->
        if n' > 0 then
          x :: helper xs' (n' - 1)
        else
          x :: helper xs' (n' + 1)
    in
    -x :: helper xs n'

