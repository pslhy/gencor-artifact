let rec heap_queue_largest (nums : int list) (n : int) : int list =
    let rec build_queue nums n =
        match nums with 
            [] -> ([], 0)
          | h::t -> let (r, s) = build_queue t n in
                        if s < n then (r, s)
                        else if h > fst (List.hd r) then (h::(List.tl r), n)
                        else (r, n) 
    in 
    let rec heap_queue_helper (nums : int list) (n : int) : int list * int =
        if n <= 0 then ([], 0)
        else 
            let (r, l) = build_queue nums n in
            let (r2, s) = heap_queue_helper r (n-l) in
            (r@r2, s+l)
    in 
    let (res, _) = heap_queue_helper (List.sort_uniq Stdlib.compare nums) n in
    List.rev res



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the n largest integers from a given list of numbers, returned in descending order. *)
