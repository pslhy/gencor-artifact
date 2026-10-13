let rec amicable_numbers_sum (limit : int) : int = 
    (* Get all the divisors of a number *)
    let rec get_divisors (num : int) : int list = 
        [
            1;
            for i in 2 .. sqrt(float_of_int num) do
                if num mod i == 0 then
                    [i; int_of_float (num /. float_of_int i)];
            done;
        ] 
    in

    (* Check if two numbers are amicable *)
    let is_amicable (n1 : int) (n2 : int) : bool = 
        get_divisors n1 = get_divisors n2
    in

    (* Sum all amicable numbers *)
    let rec sum_amicable_nums (num : int) (sum : int) : int = 
        if num > limit then 
            sum
        else
            let divisors = get_divisors num in 
            sum_amicable_nums (num + 1) (
                if is_amicable num (List.hd divisors) then
                    sum + num
                else
                    sum
            )
    in 
    sum_amicable_nums 1 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sum all amicable numbers from 1 to a specified number. *)
