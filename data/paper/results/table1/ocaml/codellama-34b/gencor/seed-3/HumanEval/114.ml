
let rec minSubArraySum (nums : int list) : int =
    if nums = [] then failwith "Empty list" else
    let min = ref (List.hd nums) in
    let rec loop (curr : int) (rest : int list) : unit =
        if rest = [] then
            min := min min curr
        else
            let hd = List.hd rest in
            loop (curr + hd) (List.tl rest)
    in
    loop 0 nums;
    !min

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a list of integers nums, find the minimum sum of any non-empty sub-list *)
(*     of nums. *)
(*     Example *)
(*     >>> minSubArraySum [2; 3; 4; 1; 2; 4] *)
(*     1 *)
(*     >>> minSubArraySum [(-1); (-2); (-3)] *)
(*     (-6) *)
