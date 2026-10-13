(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the nth decagonal number. *)
let rec is_num_decagonal (n : int) : int = 
    let ( << ) a b = a * 10 + b in
    let nums = 1 :: List.init 9 (fun x -> x + 2) in
    let rec aux n = function
        | [] -> false
        | h :: t -> if n = h then true
                   else aux (n - h) t
    in aux n nums

