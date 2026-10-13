let rec heap_queue_largest (nums : int list) (n : int) : int list =
    if n = 0 then [] else begin
        let sorted = List.sort (fun x y -> compare y x) nums in
        heap_queue_largest (List.hd sorted) (n - 1) @ [List.hd sorted]
    end


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the n largest integers from a given list of numbers, returned in descending order. *)
