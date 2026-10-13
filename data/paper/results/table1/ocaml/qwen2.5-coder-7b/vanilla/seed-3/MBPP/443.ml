let rec largest_neg (list1 : int list) : int = 
    let rec helper (list2 : int list) (max_neg : int option) : int option = 
        match list2 with
        | [] -> max_neg
        | x::xs -> 
            if x < 0 then
                match max_neg with
                | None -> helper xs (Some x)
                | Some y -> helper xs (Some (max x y))
            else
                helper xs max_neg
    in
    match helper list1 None with
    | None -> failwith "No negative numbers in the list"
    | Some x -> x;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the largest negative number from the given list. *)
