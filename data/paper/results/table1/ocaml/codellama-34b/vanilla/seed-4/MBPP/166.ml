let rec find_even_pair (a : int list) : int = 
    (* base case: a has less than 2 elements *)
    if List.length a < 2 then 0
    (* recursive case: a has 2 or more elements *)
    else begin
        (* decompose the input list into the first element and the rest *)
        let (x, rest) = List.hd a, List.tl a in
        (* search for pairs of elements in rest that xor to an even number *)
        let count = List.fold_left (fun acc y -> if x lxor y = 0 then acc + 1 else acc) 0 rest in
        count + find_even_pair rest
    end


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that counts the number of pairs of integers in a list that xor to an even number. *)
