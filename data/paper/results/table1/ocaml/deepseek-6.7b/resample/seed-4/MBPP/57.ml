(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the largest number that can be formed with the given list of digits. *)
let rec find_Max_Num (arr : int list) : int =
  let rec aux xList acc =
    match xList with
    | [] -> acc
    | h::t -> aux (List.filter (fun x -> x != h) t) ((acc*10)+h)
  in List.max (List.map (fun x -> aux x 0) arr)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:6: Unbound value "List.max" *)
(*     Hint: Did you mean "map"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_Max_Num (arr : int list) : int =
  let rec aux xList acc =
    match xList with
    | [] -> acc
    | h::t -> aux (List.filter (fun x -> x <> h) t) ((acc*10)+h)
  in List.fold_left (fun a b -> max a (aux b 0)) 0 arr

