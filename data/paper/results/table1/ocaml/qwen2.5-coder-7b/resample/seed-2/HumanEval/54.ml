(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Check if two words have the same characters. *)
(*     >>> same_chars "eabcdzzzz" "dddzzzzzzzddeddabc" *)
(*     true *)
(*     >>> same_chars "abcd" "dddddddabc" *)
(*     true *)
(*     >>> same_chars "dddddddabc" "abcd" *)
(*     true *)
(*     >>> same_chars "eabcd" "dddddddabc" *)
(*     false *)
(*     >>> same_chars "abcd" "dddddddabce" *)
(*     false *)
(*     >>> same_chars "eabcdzzzz" "dddzzzzzzzddddabc" *)
(*     false *)
let rec same_chars (s0 : string) (s1 : string) : bool = 
    let count_chars s =
        let rec helper s acc =
            match s with
            | [] -> acc
            | h :: t -> helper t (Map.add h (Map.get_default 0 h acc + 1) acc)
        in
        helper (List.of_seq (String.to_seq s)) Map.empty
    in
    let chars0 = count_chars s0 in
    let chars1 = count_chars s1 in
    Map.equal (=) chars0 chars1

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:35: Unbound value "Map.add" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec same_chars (s0 : string) (s1 : string) : bool = 
    let count_chars s =
        let rec helper s acc =
            match s with
            | [] -> acc
            | h :: t -> helper t (Map.add h (Map.find h acc + 1) acc)
        in
        helper (List.of_seq (String.to_seq s)) (Map.init 256 (fun _ -> 0))
    in
    let chars0 = count_chars s0 in
    let chars1 = count_chars s1 in
    chars0 = chars1

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:35: Unbound value "Map.add" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec same_chars (s0 : string) (s1 : string) : bool = 
    let count_chars s =
        let rec helper s acc =
            match s with
            | [] -> acc
            | h :: t -> if Map.mem h acc then helper t (Map.add h (Map.find h acc + 1) acc) else helper t (Map.add h 1 acc)
        in
        helper (List.of_seq (String.to_seq s)) Map.empty
    in
    let chars0 = count_chars s0 in
    let chars1 = count_chars s1 in
    Map.equal (=) chars0 chars1

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:28: Unbound value "Map.mem" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec same_chars (s0 : string) (s1 : string) : bool = 
    let count_chars s =
        let rec helper s acc =
            match s with
            | [] -> acc
            | h :: t -> if List.mem h acc then helper t ((h, (List.assoc h acc) + 1) :: (List.remove_assoc h acc)) else helper t ((h, 1) :: acc)
        in
        helper (List.of_seq (String.to_seq s)) []
    in
    let chars0 = count_chars s0 in
    let chars1 = count_chars s1 in
    chars0 = chars1

