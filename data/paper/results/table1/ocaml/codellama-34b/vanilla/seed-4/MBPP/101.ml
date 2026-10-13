let rec kth_element (arr : int list) (k : int) : int = 
    let n = List.length arr in
    if k <= 0 || k > n then 
        raise (InvalidArgumentException "k") 
    else 
        let rec aux arr k i =
            if i = k then arr.[i-1]
            else 
                let recursion = aux arr k i + 1
                if recursion <= n then recursion else raise NotFound
        in
        aux arr k 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the kth element in the given list using 1-based indexing. *)
