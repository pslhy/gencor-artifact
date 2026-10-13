let rec find_Odd_Pair (a : int list) (n : int) : int =
    match a with
    | [] -> 0
    | h::t -> (List.fold_left (fun acc x -> if ((h lxor x) land 1) = 1 then acc + 1 else acc) 0 t) + find_Odd_Pair t (n-1)

let main = 
    let a = [1; 2; 3; 4] in
    let n = List.length a in
    Printf.printf "%d\n" (find_Odd_Pair a n)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of pairs whose xor value is odd. *)
