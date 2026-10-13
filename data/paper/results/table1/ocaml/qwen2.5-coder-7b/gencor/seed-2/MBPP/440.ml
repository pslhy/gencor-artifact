
let rec find_adverb_position (text : string) :  int * int * string = 
    let rec find_index (starts : int list) (chars : char list) (acc : int) : int * int * string =
        match chars, starts with
            _, [] -> (-1, -1, "")
          | ch::rest, 0::s -> (acc, acc+1, Char.escaped ch)
          | ch::rest, st -> find_index sin
        rest (acc+1) (Char.escaped ch)
    
    in
    let rec split words = match words with
    | [] -> ([], [])
    | h::t ->
        let x, y = split t in
        if String.length h < 4 then (x, h::y)
        else ((h::x), y)
        
    in
    let words = split (String.split_on_char ' ' text) in
    let starts = List.map (fun x -> List.length x) words in
    let abvs_pos = find_index starts (String.to_seq text) 0 in
    
    abvs_pos

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the first adverb and their positions in a given sentence. *)
