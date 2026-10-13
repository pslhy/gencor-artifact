(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given a list of integers nums, find the minimum sum of any non-empty sub-list *)
(*     of nums. *)
(*     Example *)
(*     >>> minSubArraySum [2; 3; 4; 1; 2; 4] *)
(*     1 *)
(*     >>> minSubArraySum [(-1); (-2); (-3)] *)
(*     (-6) *)
let rec minSubArraySum (nums : int list) : int =
    if nums = [] then failwith "Empty list" else
    let min = ref (List.hd nums) in
    let rec loop (curr : int) (rest : int list) : unit =
        if rest = [] then
            min := minInt !min curr
        else
            let v = curr + (List.hd rest) in
            minSubArraySum (v :: rest)
    in loop 0 nums; !min

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:20: Unbound value "minInt" *)
(*     Hint: Did you mean "min_int"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec minSubArraySum (nums : int list) : int =
    if nums = [] then failwith "Empty list" else
    let min = ref (List.hd nums) in
    let rec loop (curr : int) (rest : int list) : unit =
        if rest = [] then
            min := min_int !min curr
        else
            let v = curr + (List.hd rest) in
            minSubArraySum (v :: rest)
    in loop 0 nums; !min

