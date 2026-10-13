let rec get_median (arr1 : int list) (arr2 : int list) (n : int) : float =
    match n with
    | 0 -> failwith "Both lists are empty"
    | _ ->
        let rec median_helper (i : int) (acc1 : int list) (acc2 : int list) : float =
            match i with
            | n when n = List.length arr1 -> failwith "Either list is empty"
            | _ ->
                let x1 = List.nth arr1 i in
                let x2 = List.nth arr2 i in
                let acc1' = x1 :: acc1 in
                let acc2' = x2 :: acc2 in
                if List.length acc1' = n then
                    List.nth arr1 (n / 2)
                else
                    let i' = i + 1 in
                    median_helper i' acc1' acc2'
        in
        let median = median_helper 0 [ ] [ ] in
        float_of_int median


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the median of two sorted lists of same size. *)
