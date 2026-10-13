let rec bell_Number (n : int) : int =
    if n <= 0 then 1
    else
        let b = Array.make_matrix (n+1) (n+1) 0 in
        b.(0).(0) <- 1;
        for i = 1 to n do
            b.(i).(0) <- b.(i-1).(i-1);
            for j = 1 to i do
                b.(i).(j) <- b.(i-1).(j-1) + b.(i).(j-1)
            done;
        done;
        b.(n).(0)

let () = print_int (bell_Number 4)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find nth bell number. *)
