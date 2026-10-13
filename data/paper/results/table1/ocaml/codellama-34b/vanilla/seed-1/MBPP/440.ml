let rec find_adverb_position (text : string) :  int * int * string =
    let is_adverb s = 
        let adverbs = [
            "tells"; "makes"; "computes"; "solves"; "finds"; "takes"
        ] in
        List.map (fun (x, y) -> x + y) adverbs = s
    in
    let len = String.length text in
    let rec find_adverb = function
        | 0 -> None
        | i ->
            if is_adverb (String.sub text i (len - i)) then
                Some (i, len - i)
            else
                find_adverb (i - 1)
    in
    find_adverb (len - 1)
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the first adverb and their positions in a given sentence. *)
