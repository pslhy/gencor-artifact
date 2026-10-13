let rec max_of_nth (test_list : int list list) (n : int) : int =
    let rec aux (acc : int) (l : int list) : int * int list =
        match l with
        | [] -> (acc, [])
        | h :: t ->
            if h = test_list.(n) then
                max acc (h * t.(n))
            else
                aux (h * t.(n)) (t)
    in
    snd (aux acc (test_list.(n)))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function which given a matrix represented as a list of lists returns the max of the n'th column. *)
