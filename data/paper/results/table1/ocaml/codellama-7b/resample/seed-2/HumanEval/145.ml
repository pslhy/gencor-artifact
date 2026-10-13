(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function which sorts the given list of integers *)
(*     in ascending order according to the sum of their digits. *)
(*     Note: if there are several items with similar sum of their digits, *)
(*     order them based on their index in original list. *)
(*     For example: *)
(*     >>> order_by_points [1; 11; (-1); (-11); (-12)] *)
(*     [(-1); (-11); 1; (-12); 11] *)
(*     >>> order_by_points [] *)
(*     [] *)
let rec order_by_points (nums : int list) : int list =
  match nums with
  | [] -> []
  | (num : int) :: remainder ->
      let sum = num mod 10 in
      let remainder' = order_by_points remainder in
      match remainder' with
      | [] -> num :: []
      | h :: t -> if sum < h mod 10 then num :: h :: t else h :: num :: t

let order_by_points _ = () [;camlp4]

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:29: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec order_by_points (nums : int list) : int list =
  let helper (nums, acc) : int list =
    match nums with
    | [] -> acc
    | n :: ns ->
        let acc' = if n mod 10 < acc mod 10 then n :: acc else acc
        helper (ns, acc')
  in
  helper (nums, [])

let test : int list = [11; 2; 4; -1; 19; 10; 9; 17]
let () = assert (order_by_points test = [-1; 2; 4; 9; 10; 11; 17; 19])

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec order_by_points (nums : int list) : int list =
  let helper (nums, acc) : int list =
    match nums with
    | [] -> acc
    | n :: ns ->
        let acc' = if n mod 10 < acc mod 10 then n :: acc else acc
        helper (ns, acc')
  in
  helper (nums, [])

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec order_by_points (nums : int list) : int list =
  let helper (nums, acc) : int list =
    match nums with
    | [] -> acc
    | n :: ns ->
        let acc' = if n mod 10 < acc mod 10 then n :: acc else acc
        helper (ns, acc')
  in
  helper (nums, [])

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec order_by_points (nums : int list) : int list =
  let helper (nums, acc) =
    match nums with
    | [] -> acc
    | n :: ns ->
        let acc' = if n mod 10 < acc mod 10 then n :: acc else acc
        helper (ns, acc')
  in
  helper (nums, [])

