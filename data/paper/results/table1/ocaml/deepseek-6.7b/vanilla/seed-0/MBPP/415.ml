let rec max_Product (arr : int list) :  int * int =
    match arr with
    | [] -> (0, 0)
    | h :: t ->
        let (max1, max2) = max_Product t in
        if h * max1 > max1 * max2 then
            (h, max1)
        else
            (max1, max2)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find a pair with highest product from a given list of integers. *)
