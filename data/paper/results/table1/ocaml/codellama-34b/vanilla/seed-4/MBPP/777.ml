let rec find_sum (arr : int list) : int = 
    (* Declare a variable to hold the sum *)
    let mut result = 0 in
    (* Use a set to keep track of unique elements *)
    let mut unique = Set.empty in
    for i in arr do
        (* If the current element is not in the set, add it to the result and add it to the set *)
        if not unique.contains(i) then
            result <- result + i
            unique <- unique.add(i)
    done;
    result


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of non-repeated elements in a given list. *)
