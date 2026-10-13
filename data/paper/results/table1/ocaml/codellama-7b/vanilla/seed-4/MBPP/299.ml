let rec max_aggregate (stdata :  (string * int) list) :  string * int = 
    match stdata with 
      head ::  _  -> let (name,mark) = head in
                    let res = mark > max_aggregate (List.tl stdata) in 
                    let s = if res < 0 then name,mark else max_aggregate (List.tl stdata)  in
                    s 
     |     [] -> raise Not_found 
     
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate the maximum aggregate from the list of tuples. *)
