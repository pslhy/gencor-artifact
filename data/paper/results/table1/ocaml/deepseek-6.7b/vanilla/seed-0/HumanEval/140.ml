let rec fix_spaces (text : string) : string =
    if not (String.contains text ' ') then text
    else 
        let open_spc = String.index text ' ' in
        String.sub text 0 open_spc ^ "_" ^ fix_spaces (String.sub text (open_spc+1) (String.length text - open_spc - 1))

let rec fix_doubles (text : string) : string =
    if not (String.contains text ' ' && String.contains text '_') then text
    else 
        let open_spc = String.index text ' ' in
        let open_und = String.index text '_' in
        let gap = open_spc - open_und in
        assert (gap > 2);
        String.sub text 0 open_und ^ "-" ^ fix_doubles (String.sub text open_spc (String.length text - open_spc))

let fix_spaces2 text = 
    let result = fix_spaces text in 
    fix_doubles result


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a string text, replace all spaces in it with underscores, *)
(*     and if a string has more than 2 consecutive spaces, *)
(*     then replace all consecutive spaces with - *)
(*     >>> fix_spaces " Example" *)
(*     "Example" *)
(*     >>> fix_spaces " Example 1" *)
(*     "Example_1" *)
(*     >>> fix_spaces " Example 2" *)
(*     "_Example_2" *)
(*     >>> fix_spaces " Example 3" *)
(*     "_Example-3" *)
