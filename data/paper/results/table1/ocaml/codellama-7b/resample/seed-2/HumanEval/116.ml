(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     In this Kata, you have to sort a list of non-negative integers according to *)
(*     number of ones in their binary representation in ascending order. *)
(*     For similar number of ones, sort based on decimal value. *)
(*     It must be implemented like this: *)
(*     >>> sort_array [1; 5; 2; 3; 4] *)
(*     [1; 2; 3; 4; 5] *)
(*     >>> sort_array [(-2); (-3); (-4); (-5); (-6)] *)
(*     [(-6); (-5); (-4); (-3); (-2)] *)
(*     >>> sort_array [1; 0; 2; 3; 4] *)
(*     [0; 1; 2; 3; 4] *)
let rec sort_array (arr : int list) : int list =
  match arr with
  | [] -> []
  | _ ->
    let key =
      arr
      |> List.map (fun x -> (number_of_ones x, x))
      |> List.sort compare
      |> List.map snd
    in
    key

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:30: Unbound value "number_of_ones" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sort_array (arr : int list) : int list =
  match arr with
  | [] -> []
  | _ ->
    let key =
      arr
      |> List.map (fun x -> (number_of_ones x, x))
      |> List.sort (fun (a, _) (b, _) -> compare a b)
      |> List.map snd
    in
    key

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:30: Unbound value "number_of_ones" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sort_array (arr : int list) : int list =
  match arr with
  | [] -> []
  | _ ->
    let key =
      arr
      |> List.map (fun x -> (count_ones x, x))
      |> List.sort (fun (a, _) (b, _) -> compare a b)
      |> List.map snd
    in
    key

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:30: Unbound value "count_ones" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sort_array (arr : int list) : int list =
  match arr with
  | [] -> []
  | _ ->
    let key =
      arr
      |> List.map (fun x -> (count_ones x, x))
      |> List.sort (fun (a, _) (b, _) -> compare a b)
      |> List.map snd
    in
    key

and count_ones n =
  let rec count_ones' n acc =
    if n = 0 then acc
    else count_ones' (n mod 2) (acc + 1)
  in
  count_ones' n 0

