let rec find_sum (arr : int list) : int = 
    let count = Hashtbl.create 100 in
    let rec count_elements = function
        | [] -> ()
        | h::t -> 
            Hashtbl.add count h ((Hashtbl.find_opt count h |> Option.value ~default:0) + 1);
            count_elements t
    and sum_non_duplicates = function
        | [] -> 0
        | h::t -> 
            if Hashtbl.find count h = 1 then h + sum_non_duplicates t else sum_non_duplicates t
    in
    count_elements arr;
    sum_non_duplicates arr


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of non-repeated elements in a given list. *)
