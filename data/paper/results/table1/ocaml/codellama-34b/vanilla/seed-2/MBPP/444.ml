let rec trim_tuple (test_list : int list list) (k : int) : int list list =
    match test_list with
    | [] -> []
    | xs::xss ->
        let xsl = List.filter (fun x -> x mod 2 = 0) xs in
        let filter_even = List.filter (fun x -> x mod 2 = 0) xsl in
        filter_even::trim_tuple xss k
    | _ -> failwith "Invalid Input"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to trim each list by k in the given lists. *)
