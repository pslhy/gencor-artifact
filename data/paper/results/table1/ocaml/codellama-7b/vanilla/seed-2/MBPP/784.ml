let rec mul_even_odd (list1 : int list) : int =
    match list1 with
        | [] -> 1
        | h::t ->
            let rec find_first_even (list : int list) : int =
                match list with
                    | [] -> failwith "No even number found"
                    | h::t -> if h mod 2 = 0 then h else find_first_even t
            in
            let rec find_first_odd (list : int list) : int =
                match list with
                    | [] -> failwith "No odd number found"
                    | h::t -> if h mod 2 <> 0 then h else find_first_odd t
            in
            let even = find_first_even list1 in
            let odd = find_first_odd list1 in
            even * odd
mul_even_odd [1; 2; 3; 4; 5; 6] ;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the product of first even and odd number of a given list. *)
