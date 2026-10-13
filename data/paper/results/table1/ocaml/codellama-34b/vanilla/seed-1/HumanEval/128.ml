let rec prod_signs (arr : int list) : int option =
    match arr with
    | [] -> Some(None)
    | [x] -> Some(abs(x))
    | x::xs ->
        let sign = if x < 0 then -1 else if x > 0 then 1 else 0 in
        let product = List.fold_left (fun acc y -> acc * (if y < 0 then -1 else if y > 0 then 1 else 0)) 1 xs in
        Some(abs(x) * product)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     You are given a list arr of integers and you need to return *)
(*     sum of magnitudes of integers multiplied by product of all signs *)
(*     of each number in the list, represented by 1, -1 or 0. *)
(*     Note: return None for empty arr. *)
(*     Example: *)
(*     >>> prod_signs [1; 2; 2; (-4)] *)
(*     Some(9) *)
(*     >>> prod_signs [0; 1] *)
(*     Some(0) *)
(*     >>> prod_signs [] *)
(*     Some(None) *)
