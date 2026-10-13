let rec count_Pairs (arr : int list) (n : int) : int =
    match arr with
    | [] -> 0
    | h :: t -> 
        let count = count_Pairs t (n-1)
        if n = 0 then count
        else count - 1

let count_Unequal (arr : int list) : int =
    let n = List.length arr
    count_Pairs arr n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function which takes a list of integers and counts the number of possible unordered pairs where both elements are unequal. *)
