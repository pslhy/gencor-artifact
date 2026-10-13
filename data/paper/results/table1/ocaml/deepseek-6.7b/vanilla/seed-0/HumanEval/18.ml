let rec how_many_times (string : string) (substring : string) : int =
    if substring = "" then 0
    else
        let open String in
        let sublen = length substring in
        let rec aux idx cnt =
            if idx > (length string) - sublen then cnt
            else
                let sub = sub string idx sublen in
                if sub = substring then aux (idx + sublen) (cnt+1)
                else aux (idx + 1) cnt
        in aux 0 0
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Find how many times a given substring can be found in the original string. Count overlaping cases. *)
(*     >>> how_many_times "" "a" *)
(*     0 *)
(*     >>> how_many_times "aaa" "a" *)
(*     3 *)
(*     >>> how_many_times "aaaa" "aa" *)
(*     3 *)
