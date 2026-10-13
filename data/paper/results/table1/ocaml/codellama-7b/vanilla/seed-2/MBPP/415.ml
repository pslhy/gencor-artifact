let rec max_Product (arr : int list) :  int * int =
    match arr with
    | [] -> failwith "Empty list"
    | [x] -> x, x
    | _ ->
        let arr' = List.sort compare arr in
        let max_a, max_b = List.hd arr', List.hd (List.tl arr') in
        if max_a * max_b < snd (List.hd (List.tl (List.tl arr))) then
            max_Product (List.tl arr')
        else
            max_a, max_b


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find a pair with highest product from a given list of integers. *)
